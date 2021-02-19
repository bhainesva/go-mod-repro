module a

go 1.16

// Use local copy of non go-module dependency
replace b => ../b

replace github.com/mhupman/go-zendesk => ../go-zendesk

require (
	b v0.0.1
	github.com/mhupman/go-zendesk v0.0.0-00010101000000-000000000000 // indirect
)
