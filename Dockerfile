FROM golang:alpine as builder

WORKDIR /go/src/gin-admin
COPY . .

RUN go env -w GO111MODULE=on \
    && go env -w GOPROXY=https://goproxy.cn,direct \
    && go env -w CGO_ENABLED=0 \
    && go env \
    && go mod tidy \
    && go build -o server .

FROM alpine:latest

LABEL MAINTAINER="SliverHorn@sliver_horn@qq.com"

WORKDIR /go/src/gin-admin

COPY --from=0 /go/src/gin-admin/server ./
COPY --from=0 /go/src/gin-admin/resource ./resource/
COPY --from=0 /go/src/gin-admin/config.docker.yaml ./

EXPOSE 8888
ENTRYPOINT ./server -c config.docker.yaml
