package pkg

import "github.com/mhupman/go-zendesk/zendesk"

func Exported() string {
	o := zendesk.Organization{}
	return o.ExternalID
}
