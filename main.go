package main

import (
	"crypto/tls"
	"fmt"
	"os"
	"strconv"
	"time"

	"github.com/mattgonewild/test"

	http2 "github.com/diamondcdn/fasthttp-http2"
	"github.com/valyala/fasthttp"
	"go.uber.org/zap"
)

const (
	READ_TIMEOUT   = "READ_TIMEOUT"
	WRITE_TIMEOUT  = "WRITE_TIMEOUT"
	IDLE_TIMEOUT   = "IDLE_TIMEOUT"
	MAX_CONN       = "MAX_CONN"
	PORT           = "PORT"
	CERT_PEM_BLOCK = "CERT_PEM_BLOCK"
	KEY_PEM_BLOCK  = "KEY_PEM_BLOCK"
)

var (
	readTimeout  time.Duration
	writeTimeout time.Duration
	idleTimeout  time.Duration
	maxConn      int
	port         string
	err          error
	cert         tls.Certificate
	logger       *zap.Logger
)

func init() {
	logger, _ = zap.NewProduction()

	readTimeout, err = time.ParseDuration(os.Getenv(READ_TIMEOUT))
	if readTimeout <= 0 {
		readTimeout = 5 * time.Second
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", READ_TIMEOUT),
			zap.String("had", os.Getenv(READ_TIMEOUT)),
			zap.String("want", `A duration string is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms", "-1.5h" or "2h45m". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	writeTimeout, err = time.ParseDuration(os.Getenv(WRITE_TIMEOUT))
	if writeTimeout <= 0 {
		writeTimeout = 10 * time.Second
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", WRITE_TIMEOUT),
			zap.String("had", os.Getenv(WRITE_TIMEOUT)),
			zap.String("want", `a duration such as "300ms", "-1.5h" or "2h45m" -- valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	idleTimeout, err = time.ParseDuration(os.Getenv(IDLE_TIMEOUT))
	if idleTimeout <= 0 {
		idleTimeout = 120 * time.Second
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", IDLE_TIMEOUT),
			zap.String("had", os.Getenv(IDLE_TIMEOUT)),
			zap.String("want", `a duration such as "300ms", "-1.5h" or "2h45m" -- valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	maxConn, err = strconv.Atoi(os.Getenv(MAX_CONN))
	if maxConn <= 0 {
		maxConn = 20
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", MAX_CONN),
			zap.String("had", os.Getenv(MAX_CONN)),
			zap.String("want", `a number with or without a leading "+" or "-" sign`),
		)
	}

	port = os.Getenv(PORT)
	if port == "" {
		port = "8080"
	}

	if !test.IsTestRun() {
		cert, err = tls.X509KeyPair([]byte(os.Getenv(CERT_PEM_BLOCK)), []byte(os.Getenv(KEY_PEM_BLOCK)))
		if err != nil {
			logger.Info(fmt.Sprintf("failed to parse %s or %s env variable", CERT_PEM_BLOCK, KEY_PEM_BLOCK),
				zap.String("had", fmt.Sprintf("CERT: %s\nKEY: [ommited] ", os.Getenv(CERT_PEM_BLOCK))),
				zap.String("want", `a public/private key pair from a pair of PEM encoded data.`),
			)
		}
	}
}

func main() {
	defer logger.Sync()
	if test.IsTestRun() {
		srv := &fasthttp.Server{
			ReadTimeout:   readTimeout,
			WriteTimeout:  writeTimeout,
			IdleTimeout:   idleTimeout,
			MaxConnsPerIP: maxConn,
			Handler:       Router(),
		}
		srv.ListenAndServe(":" + port)
	} else {
		srv := &fasthttp.Server{
			ReadTimeout:   readTimeout,
			WriteTimeout:  writeTimeout,
			IdleTimeout:   idleTimeout,
			MaxConnsPerIP: maxConn,
			Handler:       Router(),
		}

		http2.ConfigureServerAndConfig(srv, &tls.Config{
			Certificates:             []tls.Certificate{cert},
			PreferServerCipherSuites: true,
			MinVersion:               tls.VersionTLS12,
			CipherSuites: []uint16{
				tls.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,
				tls.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,
				tls.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,
				tls.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305,
				tls.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,
				tls.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,
			},
			CurvePreferences: []tls.CurveID{
				tls.CurveP256,
				tls.X25519,
			},
		})

		logger.Info(srv.ListenAndServeTLS(":"+port, "", "").Error())
	}
}
