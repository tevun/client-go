#!/bin/sh

go build -o main -gcflags='-N -l' main.go&&
dlv --listen=:2345 --headless=true --api-version=2 exec /go/client-go/src/main;