FROM tevun/go-cli

COPY root /

WORKDIR /go/client-go/src

RUN chmod +x /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["dlv", "debug", "--headless", "--listen=:2345", "--api-version=2", "--accept-multiclient"]

# CMD ["go", "run", "main.go"]