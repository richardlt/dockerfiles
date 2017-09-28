FROM alpine:3.6

RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

CMD ssh \
-vv \
-o StrictHostKeyChecking=no \
-Nn $TUNNEL_HOST \
-L *:$LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT