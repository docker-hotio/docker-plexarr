FROM golang:alpine as builder
ARG VERSION
RUN wget -O /usr/local/bin/plexarr "https://github.com/l3uddz/plexarr/releases/download/v${VERSION}/plexarr_v${VERSION}_linux_amd64" && \
    chmod 755 /usr/local/bin/plexarr
COPY get-token.sh /usr/local/bin/get-token
RUN chmod 755 /usr/local/bin/get-token

FROM alpine@sha256:4266485e304a825d82c375d3584121b53c802e3540d6b520b212a9f0784d56f5
ENTRYPOINT ["plexarr"]
RUN apk add --no-cache curl jq
COPY --from=builder /usr/local/bin/get-token /usr/local/bin/get-token
COPY --from=builder /usr/local/bin/plexarr /usr/local/bin/plexarr
