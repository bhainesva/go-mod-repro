module a

go 1.16

// Use local copy of non go-module dependency
replace b => ../b
replace github.com/nukosuke/go-zendesk => github.com/mhupman/go-zendesk v0.9.1-0.20210111204757-51a16dfcc5ee

require (
	b v0.0.1
)
