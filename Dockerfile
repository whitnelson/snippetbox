FROM golang:latest

WORKDIR /app

COPY ./ /app

RUN go get github.com/githubnemo/CompileDaemon

ENTRYPOINT CompileDaemon --build="go build ./cmd/web" --command=./web

EXPOSE 4000
