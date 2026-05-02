package main

import (
	"log"

	"codeberg.org/stefankuehnel/cobra/cmd"
)

func main() {
	rootCmd := cmd.NewRootCmd()

	err := rootCmd.Execute()
	if err != nil {
		logger := log.Default()
		logger.SetPrefix("cobra: ")
		logger.SetOutput(rootCmd.ErrOrStderr())
		logger.SetFlags(0)

		logger.Fatalln(err)
	}
}
