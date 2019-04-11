FROM karalabe/xgo-1.11.5

RUN apt-get update && apt-get install -y git ssh && rm -rf /var/lib/apt/lists/*

RUN sed -i.bak '/\bgo get $V $X\b/d' ./build.sh