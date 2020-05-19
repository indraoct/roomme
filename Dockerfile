FROM golang:1.14

MAINTAINER Indra Octama omyank2007i@gmail.com
WORKDIR /go/src/roomme

COPY . .

RUN go mod download

ENV ROOMME_HTTP_PORT=9000
ENV ROOMME_DB_HOST=35.240.146.95
ENV ROOMME_DB_USER=developer
ENV ROOMME_DB_PASS=dev123
ENV ROOMME_DB_NAME=roomme


CMD ["go", "run","main.go"]