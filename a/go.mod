module a

go 1.16

replace b => ../b

replace github.com/bhainesva/testmodule => github.com/bhainesva/testmodule v0.0.0-20210220042843-67a0e405dfec

require b v0.0.0
