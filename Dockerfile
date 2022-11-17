FROM golang:1.19.3-alpine3.16

ENV OS=LINUX \
    VERSION=0.12.0 \
    ARCH=x86_64
RUN apk add --no-cache curl && \
    curl curl -L https://github.com/google/ko/releases/download/v${VERSION}/ko_${VERSION}_${OS}_${ARCH}.tar.gz | tar xzf - ko &&\
    chmod +x  ko && mv ko /usr/bin/ko
ENTRYPOINT ["ko"]
CMD [ "--help" ]
