FROM golang:1.9.2-stretch

ENV DEP_VERSION=v0.3.2

RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/${DEP_VERSION}/dep-linux-amd64 && chmod +x /usr/local/bin/dep

ADD bootstrap.sh /usr/local/bin/

ENTRYPOINT [ "bootstrap.sh" ]

CMD [ "help" ]