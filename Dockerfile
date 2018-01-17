FROM golang:1.9.2-stretch

WORKDIR /app

ENV SRC_DIR=/go/src/github.com/quamotion/nfusr-csi/

ADD . $SRC_DIR

RUN cd $SRC_DIR/src/app \
&& curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.3.2/dep-linux-amd64 \
&& chmod +x /usr/local/bin/dep \
&& dep ensure \
&& go build -o /app/nfusr-csi

FROM quamotion/nfusr

COPY --from=0 /app/nfusr-csi /usr/bin/nfusr-csi

ENTRYPOINT ["/usr/bin/nfusr-csi"]

