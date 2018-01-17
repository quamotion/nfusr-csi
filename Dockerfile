FROM golang:1.9.2-stretch

WORKDIR /app

ENV SRC_DIR=/go/src/github.com/quamotion/nfusr-csi/

ADD . $SRC_DIR

RUN cd $SRC_DIR/src/app \
&& go build -o /app/nfusr-ci