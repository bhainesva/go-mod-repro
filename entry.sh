#!/bin/bash

echo "Running b/main.go with modules disabled"
(cd b; GO111MODULE=off go run main.go)

echo "Running a/main.go with modules enabled"
(cd a; go run main.go)

