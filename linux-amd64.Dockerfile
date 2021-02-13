FROM golang:alpine as builder
ARG VERSION
RUN wget -O /usr/local/bin/plexarr "https://github.com/l3uddz/plexarr/releases/download/v${VERSION}/plexarr_v${VERSION}_linux_amd64" && \
    chmod 755 /usr/local/bin/plexarr
COPY get-token.sh /usr/local/bin/get-token
RUN chmod 755 /usr/local/bin/get-token

FROM alpine@sha256:3747d4eb5e7f0825d54c8e80452f1e245e24bd715972c919d189a62da97af2ae
ENTRYPOINT ["plexarr"]
RUN apk add --no-cache curl jq
COPY --from=builder /usr/local/bin/get-token /usr/local/bin/get-token
COPY --from=builder /usr/local/bin/plexarr /usr/local/bin/plexarr
