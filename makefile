WEB_PORT = 9613

all: deps build

start:
	@ go run ./mustache-server.go -port ${WEB_PORT}

deps:
	DEST=public/lib ./deps

build:
	@ ./build "localhost:${WEB_PORT}"

unbuild:
	@ ./unbuild

.PHONY: build unbuild deps
