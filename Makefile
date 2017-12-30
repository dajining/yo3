build:
	@cd `dirname $(FILE)`; make build

push:
	@cd `dirname $(FILE)`; make push

clean:
	@cd `dirname $(FILE)`; make clean
