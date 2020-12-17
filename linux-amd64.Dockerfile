FROM golang:alpine as builder
ARG VERSION
RUN wget -O /usr/local/bin/plexarr "https://github.com/l3uddz/plexarr/releases/download/v${VERSION}/plexarr_v${VERSION}_linux_amd64" && \
    chmod 755 /usr/local/bin/plexarr
COPY get-token.sh /usr/local/bin/get-token
RUN chmod 755 /usr/local/bin/get-token

FROM alpine@sha256:074d3636ebda6dd446d0d00304c4454f468237fdacf08fb0eeac90bdbfa1bac7
ENTRYPOINT ["plexarr"]
RUN apk add --no-cache curl jq
COPY --from=builder /usr/local/bin/get-token /usr/local/bin/get-token
COPY --from=builder /usr/local/bin/plexarr /usr/local/bin/plexarr
