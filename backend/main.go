package main

import (
	"github.com/AlisterLuiz/AlSafar/cmd"
	"github.com/urfave/cli/v2"
	"log"
	"os"
)

// VERSION specifies the version of the platform
var VERSION = "1.0.0"
var mode string


func main() {
	app := cli.NewApp()
	app.Name = "Al Safar"
	app.Usage = "Stuff happening here"
	app.Version = VERSION
	app.Flags = cmd.AppConfigFlags
	app.Action = cmd.CliAction

	err := app.Run(os.Args)
	if err != nil {
		log.Fatal(err)
	}
}