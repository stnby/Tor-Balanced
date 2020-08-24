#!/bin/sh

for c in pids/*.pid
do
    kill -15 `cat $c`
done
