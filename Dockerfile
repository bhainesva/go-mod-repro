FROM golang:1.16

WORKDIR /go/src/
COPY a a
COPY b b
COPY entry.sh .
RUN chmod +x entry.sh

RUN GO111MODULE=off go get github.com/mhupman/go-zendesk/zendesk

ENTRYPOINT ["./entry.sh"]