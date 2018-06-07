# website-development

## Requirements

- basic unix tools: sed, bash, curl, rsync
- git
- golang

## Setup

Install the current version of the production website under `/dist` with:

```bash
$ git clone github.com/un-modelling.github.io dist
```

Once golang is installed on your system, run:

```bash
$ go get github.com/hoisie/web
$ go get github.com/hoisie/mustache
```

## Running, Building and Unbuilding

Read the `makefile` and the scripts that it calls.

Then you can spawn a templating webserver running:

```bash
$ make start
```

Once the changes are final run:

```bash
$ make build
```

You will have to git-commit the changes under the `/dist` directory since
it is a different project.

If you know there are changes on the _un-modelling.github.io_ html files
you can run the following to patch the template files one-by-one:

```bash
$ make unbuild
```
