package cmd

import (
	"github.com/urfave/cli/v2"
	"github.com/AlisterLuiz/AlSafar/server"
)

var CliAction = func(ctx *cli.Context) error {
	if Server {
		// TODO: with RPC calls
		server.Server()
		//server.Rpc()
	}


	return nil
}
