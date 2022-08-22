# Build Geth in a stock Go builder container
FROM golang:1.16-alpine as builder

RUN apk add --no-cache make gcc musl-dev linux-headers git

ENV REPO=https://github.com/mdehoog/quorum.git
ENV BRANCH=master

WORKDIR /go-ethereum

RUN git clone --depth 1 -b $BRANCH $REPO .

RUN make geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache ca-certificates curl bash
COPY --from=builder /go-ethereum/build/bin/geth /usr/local/bin/
COPY . .

EXPOSE 8545 8546 30303 30303/udp
ENTRYPOINT ["./entrypoint.sh"]
