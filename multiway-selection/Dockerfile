FROM alpine:3.18

RUN apk add --no-cache bash findutils coreutils

COPY dir_path.sh /usr/local/bin/dir_path.sh

RUN chmod +x /usr/local/bin/dir_path.sh

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/dir_path.sh"]
