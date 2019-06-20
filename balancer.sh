#!/bin/sh

# go get github.com/darkhelmet/balance
balance tcp -bind :4000 localhost:9060 localhost:9061 localhost:9062 localhost:9063 localhost:9064 localhost:9065
