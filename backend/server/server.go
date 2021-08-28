package server

import (
	"fmt"
	"net/http"
	"github.com/gin-gonic/gin"
)

func Server() error{
	r := gin.Default()

	// Gets default information of the server
	r.GET("/server_info", func(c *gin.Context) {
		//c.JSON(http.StatusOK, ServerInfo())
		c.String(http.StatusOK, fmt.Sprint("lol"))
	})

	// Run gin server on the specified port
	err := r.Run(":8081")
	if err != nil {
		return err
	}

	return nil
}
