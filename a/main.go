package main

import (
	"fmt"

	"b/pkg"

	"github.com/bhainesva/testmodule"
)

func main() {
	fmt.Println("Direct dep: ", testmodule.Get())
	fmt.Println("Imported dep: ", pkg.Exported())
}
