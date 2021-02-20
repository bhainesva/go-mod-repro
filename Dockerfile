FROM golang:1.16

WORKDIR /go/src/
COPY a a
COPY b b
COPY entry.sh .
RUN chmod +x entry.sh

RUN GO111MODULE=off go get github.com/bhainesva/testmodule
RUN cd /go/src/github.com/bhainesva/testmodule && git checkout 67a0e405dfecfcebf77440395fdcfef6466e702b

ENTRYPOINT ["./entry.sh"]