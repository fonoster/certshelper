FROM alpine:3.10
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"

RUN apk --update add openssl

WORKDIR /certs
COPY gen-certs /usr/local/bin/gen-certs
CMD /usr/local/bin/gen-certs
RUN chmod +x /usr/local/bin/gen-certs
VOLUME /certs
