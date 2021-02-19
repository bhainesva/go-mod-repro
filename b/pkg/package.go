package pkg

import "github.com/nukosuke/go-zendesk/zendesk"

func Exported() string {
	o := zendesk.Organization{}
	// Only exists in the forked version
	return o.ExternalID
}
