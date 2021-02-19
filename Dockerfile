FROM golang:1.16

WORKDIR /go/src/
COPY a a
COPY b b
COPY entry.sh .
RUN chmod +x entry.sh

ENTRYPOINT ["./entry.sh"]