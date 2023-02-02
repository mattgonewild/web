package main

import (
	"embed"
	"fmt"
	"net/http"
	"os"
	"time"

	"github.com/ory/graceful"
	"go.uber.org/zap"
)

const (
	READ_TIMEOUT  = "READ_TIMEOUT"
	WRITE_TIMEOUT = "WRITE_TIMEOUT"
	IDLE_TIMEOUT  = "IDLE_TIMEOUT"
	PORT          = "PORT"
)

var (
	readTimeout  time.Duration
	writeTimeout time.Duration
	idleTimeout  time.Duration
	port         string
	err          error
	logger       *zap.Logger
	//go:embed static/*
	flutter embed.FS
)

func init() {
	logger, _ = zap.NewProduction()

	readTimeout, err = time.ParseDuration(os.Getenv(READ_TIMEOUT))
	if readTimeout > 0 {
		graceful.DefaultReadTimeout = readTimeout
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", READ_TIMEOUT),
			zap.String("had", os.Getenv(READ_TIMEOUT)),
			zap.String("want", `A duration string is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms", "-1.5h" or "2h45m". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	writeTimeout, err = time.ParseDuration(os.Getenv(WRITE_TIMEOUT))
	if writeTimeout > 0 {
		graceful.DefaultWriteTimeout = writeTimeout
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", WRITE_TIMEOUT),
			zap.String("had", os.Getenv(WRITE_TIMEOUT)),
			zap.String("want", `a duration such as "300ms", "-1.5h" or "2h45m" -- valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	idleTimeout, err = time.ParseDuration(os.Getenv(IDLE_TIMEOUT))
	if idleTimeout > 0 {
		graceful.DefaultIdleTimeout = idleTimeout
	}
	if err != nil {
		logger.Info(fmt.Sprintf("failed to parse %s env variable", IDLE_TIMEOUT),
			zap.String("had", os.Getenv(IDLE_TIMEOUT)),
			zap.String("want", `a duration such as "300ms", "-1.5h" or "2h45m" -- valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".`),
		)
	}

	port = os.Getenv(PORT)
	if port == "" {
		port = "8080"
	}
}

func main() {
	defer logger.Sync()
	server := graceful.WithDefaults(&http.Server{
		Addr:    ":" + port,
		Handler: http.FileServer(http.FS(flutter)),
	})

	logger.Info("starting the server")
	if err := graceful.Graceful(server.ListenAndServe, server.Shutdown); err != nil {
		logger.Info("failed to gracefully shutdown")
	}
	logger.Info("server was shutdown gracefully")
}
