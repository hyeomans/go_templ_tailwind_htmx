package main

import (
	"os"

	"github.com/hyeomans/templ-blog-post/views"
	"github.com/labstack/echo/v4"
)

func main() {
	port := os.Getenv("PORT")
	e := echo.New()

	e.Static("/public", "public")

	e.GET("/", func(c echo.Context) error {
		return views.Home().Render(c.Request().Context(), c.Response())
	})

	e.Logger.Fatal(e.Start(port))
}
