#!/bin/bash

BUILD_OPTIONS="windows,linux,mac"
BUILD_PLATFORM=${1}

function __build
{
    if [[ ! ",${BUILD_OPTIONS}," =~ ",${BUILD_PLATFORM}," ]]; then
        echo "You need to enter one of these options: ${BUILD_OPTIONS}"
        echo "Ex.: ./go.build.sh windows"
        return
    fi

    BUILD_OUTPUT="dist/${BUILD_PLATFORM}"
    if [[ BUILD_PLATFORM = "windows" ]]; then
        BUILD_OUTPUT="${BUILD_OUTPUT}.exe"
    fi

    if [[ -f ${BUILD_OUTPUT} ]]; then
        rm -f ${BUILD_OUTPUT}
    fi

    docker run --rm\
     -v $(pwd):/var/www/app\
     -w /var/www/app\
     tevun-client-go\
     env GOOS=${BUILD_PLATFORM} GOARCH=amd64\
     go build -o ${BUILD_OUTPUT} src/main.go

    if [[ -f ${BUILD_OUTPUT} ]]; then
        chown 1000:1000 ${BUILD_OUTPUT}
        chmod +x ${BUILD_OUTPUT}
    fi
}

__build
