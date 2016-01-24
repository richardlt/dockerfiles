#!/bin/sh

echo "docker-machine $@" >> /opt/fake.log

ssh -q -A -t -t -oStrictHostKeyChecking=no $SSH_USER@$SSH_HOST "docker-machine $@"
