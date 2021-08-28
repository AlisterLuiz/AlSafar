package cmd

import (
"github.com/urfave/cli/v2"
)

// Variables declared for CLI
var (
	Server            	 bool
)

var AppConfigFlags = []cli.Flag{
	// Deprecated to be implemented using GRPC
	&cli.BoolFlag{
		Name:        "Server",
		Aliases: []string{"s"},
		Usage:       "Starts server",
		EnvVars: []string{"SERVER"},
		Destination: &Server,
	},
}
