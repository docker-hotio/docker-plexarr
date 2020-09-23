FROM alpine@sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
ENTRYPOINT ["plexarr"]
ARG VERSION
RUN wget -O /usr/local/bin/plexarr "https://github.com/l3uddz/plexarr/releases/download/v${VERSION}/plexarr_v${VERSION}_linux_amd64" && \
    chmod 755 /usr/local/bin/plexarr
