> #WIP

# Tevun CLI

Tevun CLI is the command line tool to projects management of Tevun Servers

## Development

Before starting development it is necessary to build the images that are used by the environment

### Build the images

It will build two images: `tevun/go` and `tevun/go-cli`
> This is temporary, we will create the org tevun in Docker registry and keep this images there.

```
make build
```

### Running the project

```
make run
```

### Debugging the project

> It is necessary configure a debug listener

```
make debug
```

### Makefile

Check the makefile to see other commands and possibilities
