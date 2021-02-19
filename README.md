## Description
Attempt to write a go module which includes a dependency on a local non-module package which in turn depends on a forked go module.

b/go.mod is a synthetic mod file, in real life b is not using go modules yet.

Run ./run.sh to run the example assuming you have docker installed. 

The output is:
```
Running b/main.go with modules disabled
0
Running a/main.go with modules enabled
go: github.com/mhupman/go-zendesk@v0.9.0: missing go.sum entry; to add it:
	go mod download github.com/mhupman/go-zendesk
```

If I attempt to run the `go mod download` command I get the following error:
```
go: github.com/mhupman/go-zendesk@v0.9.0: parsing go.mod:
	module declares its path as: github.com/nukosuke/go-zendesk
	        but was required as: github.com/mhupman/go-zendesk
```
because the mhupman/go-zendesk fork did not change the module path in its go.mod file.

### Goal
Allow a to depend on b without needing to update either b or its transitive dependencies.

### Notes
* I've tried different combinations of `require` and `replace` in a/go.mod but haven't had success with anything.

* Replacing all instances of `mhupman` (the fork) with the `nukosuke` (the parent) makes everything work, but in real life b needs to use the fork.

* I assume udpating the `mhupman` fork to change the module path would also work, but I'm not sure that's practical either.

* I haven't tried manually updating the go.sum file, maybe that would help?

