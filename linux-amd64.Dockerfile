FROM golang:alpine as builder

ARG VERSION

RUN apk add --no-cache git build-base && \
    git clone -n https://github.com/l3uddz/plexarr.git /plexarr && cd /plexarr && \
    git checkout ${VERSION} -b hotio && \
    make && \
    chmod 755 /plexarr/dist/plexarr_linux_amd64/plexarr
COPY get-token.sh /usr/local/bin/get-token
RUN chmod 755 /usr/local/bin/get-token

FROM alpine@sha256:def822f9851ca422481ec6fee59a9966f12b351c62ccb9aca841526ffaa9f748
ENTRYPOINT ["plexarr"]
RUN apk add --no-cache curl jq
COPY --from=builder /usr/local/bin/get-token /usr/local/bin/get-token
COPY --from=builder /plexarr/dist/plexarr_linux_amd64/plexarr /usr/local/bin/
