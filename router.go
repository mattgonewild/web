package main

import (
	"github.com/fasthttp/router"
	"github.com/valyala/fasthttp"
)

func Router() fasthttp.RequestHandler {
	r := router.New()
	r.Handle(fasthttp.MethodGet, "/", rootHandler)

	return r.Handler
}
