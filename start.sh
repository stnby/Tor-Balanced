#!/bin/sh

for c in confs/*; do
  tor -f $c > /dev/null 2>&1 &
done

./balancer.sh
