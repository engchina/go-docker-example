FROM golang:alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

# COPY ./src .
COPY ./ .

RUN go mod tidy

RUN go build -o binary

ENTRYPOINT ["/app/binary"]
