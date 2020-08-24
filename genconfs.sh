#!/bin/bash
STARTPORT=9000
THREADS=$1

rm -rf confs data pids
mkdir -p confs data pids

echo '#!/bin/sh' > balancer.sh
echo -n '~/go/bin/balance tcp -bind :9000 ' >> balancer.sh

for i in `seq $THREADS`
do
    echo "PIDFile pids/tor$i.pid" > confs/torrc$i
    echo "DataDirectory data/tor$i" >> confs/torrc$i
    echo "SocksPort $((STARTPORT+i))" >> confs/torrc$i

    echo -n "localhost:$((STARTPORT+i)) " >> balancer.sh
done

echo >> balancer.sh
chmod +x balancer.sh
