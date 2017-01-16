mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
APP = $(current_dir)

test:
	crystal spec
build:
	crystal build --release src/$(APP).cr
run:
	crystal run src/$(APP).cr

