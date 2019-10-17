FROM karalabe/xgo-base

ENV GO_VERSION 1131

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz && \
  export ROOT_DIST_SHA=94f874037b82ea5353f4061e543681a0e79657f787437974214629af8407d124 && \
  \
  $BOOTSTRAP_PURE

RUN apt-get update && apt-get install -y git ssh && rm -rf /var/lib/apt/lists/*

RUN sed -i.bak '/\bgo get $V $X\b/d' ./build.sh