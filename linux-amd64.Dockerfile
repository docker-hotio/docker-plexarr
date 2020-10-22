FROM golang:alpine as builder
ARG VERSION
RUN wget -O /usr/local/bin/plexarr "https://github.com/l3uddz/plexarr/releases/download/v${VERSION}/plexarr_v${VERSION}_linux_amd64" && \
    chmod 755 /usr/local/bin/plexarr
COPY get-token.sh /usr/local/bin/get-token
RUN chmod 755 /usr/local/bin/get-token

FROM alpine@sha256:d7342993700f8cd7aba8496c2d0e57be0666e80b4c441925fc6f9361fa81d10e
ENTRYPOINT ["plexarr"]
RUN apk add --no-cache curl jq
COPY --from=builder /usr/local/bin/get-token /usr/local/bin/get-token
COPY --from=builder /usr/local/bin/plexarr /usr/local/bin/plexarr
