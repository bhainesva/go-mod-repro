package pkg

import "github.com/bhainesva/testmodule"

func Exported() string {
	return testmodule.Get()
}
