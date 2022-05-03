FROM golang:alpine:3.15.0

ENV OS=LINUX \
    VERSION=0.11.2 \
    ARCH=x86_64
RUN apk add --no-cache curl && \
    curl curl -L https://github.com/google/ko/releases/download/v${VERSION}/ko_${VERSION}_${OS}_${ARCH}.tar.gz | tar xzf - ko &&\
    chmod +x  ko && mv ko /usr/bin/ko
#if you enable this layer, ko will use alpine as image otherwise default image is distroless/static. 
#RUN echo "defaultBaseImage: alpine" > .ko.yml
ENTRYPOINT ["ko"]
CMD [ "--help" ]
