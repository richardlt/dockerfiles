FROM karalabe/xgo-base

ENV GO_VERSION 1133

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz && \
  export ROOT_DIST_SHA=0804bf02020dceaa8a7d7275ee79f7a142f1996bfd0c39216ccb405f93f994c0 && \
  \
  $BOOTSTRAP_PURE

RUN apt-get update && apt-get install -y git ssh curl && rm -rf /var/lib/apt/lists/*

RUN sed -i.bak '/\bgo get $V $X\b/d' ./build.sh