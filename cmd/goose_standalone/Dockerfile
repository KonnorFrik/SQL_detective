# === Build stage === #
FROM golang:1.24-alpine3.21 AS builder
WORKDIR /go/
RUN go install github.com/pressly/goose/v3/cmd/goose@v3.24.3
COPY ./cmd/goose_standalone/goose_run.sh .
COPY ./queries_goose/ ./queries/
RUN adduser -S user
USER user

ENTRYPOINT [ "sh", "goose_run.sh"]

