### Builder

FROM golang:1.15.2-alpine3.12 as builder

RUN apk update
RUN apk add build-base librdkafka

WORKDIR /usr/src/kubearmor-kafka-client

COPY ./common ./common
COPY ./core ./core
COPY ./go.mod ./go.mod
COPY ./main.go ./main.go

RUN GOOS=linux GOARCH=amd64 go build -a -ldflags '-s -w' -tags musl -o kubearmor-kafka-client main.go

### Make executable image

FROM alpine:3.12

COPY --from=builder /usr/src/kubearmor-kafka-client/kubearmor-kafka-client /kubearmor-kafka-client

ENTRYPOINT ["/kubearmor-kafka-client"]
