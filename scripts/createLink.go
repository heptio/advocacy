package main

import (
	rebrandly "github.com/kris-nova/rebrandly-go-sdk"
	"fmt"
	"os"
	"github.com/kubicorn/kubicorn/pkg/logger"
	"github.com/kubicorn/kubicorn/pkg/namer"
)

// main just runs our simple go script
func main() {
	err := run()
	if err != nil {
		logger.Critical("Unable to run script: %v", err)
		os.Exit(1)
	}
	logger.Info("Success!")
	os.Exit(0)
}

// run wraps the logic of the script and can return an error that main() will respect
func run() error {
	client, err := rebrandly.NewRebrandlyClient()
	if err != nil {
		return fmt.Errorf("Unable to create rebrandly client: %v", err)
	}

	newEventUrl := getUrl()

	// TODO @kris-nova we use the random namer because it's hilarious but we might want to use something else moving forward
	randomName := namer.RandomName()

	params := map[string]interface{}{
		// 8f104cc5b6ee4a4ba7897b06ac2ddcfb is the default rebrand.ly id
		"destination": newEventUrl,
		"slashtag":    randomName,
		"title":       randomName,
		//"description": "A wonderful link",
		"domain": map[string]interface{}{
			"ref": "",
			"id":  "8f104cc5b6ee4a4ba7897b06ac2ddcfb",
		},
	}
	res, err := client.CreateLink(params)
	if err != nil {
		fmt.Println(err.Error())
		os.Exit(1)
	}

	// Format the response
	responseBody, err := res.Pretty()
	if err != nil {
		fmt.Println(err.Error())
		os.Exit(1)
	}

	// Output
	fmt.Println(res.Response.Status)
	fmt.Println(responseBody)

}

// getURL will calculate the public resolvable URL for the newly created event if one exists
func getUrl() string {

	// TODO @kris-nova we probably need to check the most recent git commits or something - this is going to be hard
	// we might have to do a diff on the master branch - I have no clue - maybe just use bash
	// ....I love bash
	return ""
}
