FROM golang:alpine

WORKDIR /app

COPY go.mod go.mod

RUN go mod download

COPY main.go main.go

ENV GOOS=linux
ENV GOARH=amd64

RUN go build -o ./bin/app

ENTRYPOINT [ "/app/bin/app" ]
