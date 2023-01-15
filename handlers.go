//go:generate qtc -dir=../../pkg/tmpl
package main

import (
	"github.com/mattgonewild/tmpl"

	"github.com/valyala/fasthttp"
)

func rootHandler(ctx *fasthttp.RequestCtx) {
	data := &tmpl.WhoAmI{
		CTX:  ctx,
		Name: "web",
	}
	ctx.SetContentType("text/html; charset=utf-8")
	tmpl.WritePageTemplate(ctx, data)
}
