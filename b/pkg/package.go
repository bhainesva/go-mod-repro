package pkg

import "github.com/mhupman/go-zendesk/zendesk"

func Exported() int {
	return zendesk.ActionFieldStatus
}
