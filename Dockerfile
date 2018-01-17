FROM golang:1.9.2-stretch

WORKDIR /app

ENV SRC_DIR=/go/src/github.com/quamotion/nfusr-csi/

ADD . $SRC_DIR

RUN cd $SRC_DIR/src/app \
&& go get \
&& go build -o /app/nfusr-csi

FROM quamotion/nfusr-docker

COPY --from=0 /app/nfusr-csi /usr/bin/nfusr-csi

ENTRYPOINT ["/usr/bin/nfusr-csi"]

