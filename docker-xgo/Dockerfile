FROM karalabe/xgo-base

ENV GO_VERSION 1123

RUN \
  export ROOT_DIST=https://dl.google.com/go/go1.12.3.linux-amd64.tar.gz && \
  export ROOT_DIST_SHA=3924819eed16e55114f02d25d03e77c916ec40b7fd15c8acb5838b63135b03df && \
  \
  $BOOTSTRAP_PURE

RUN apt-get update && apt-get install -y git ssh && rm -rf /var/lib/apt/lists/*

RUN sed -i.bak '/\bgo get $V $X\b/d' ./build.sh