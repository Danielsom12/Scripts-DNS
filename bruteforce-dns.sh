#!/bin/bash

for server in $(host -t ns $1 | awk '{print $4}'); do
    echo "Tentando AXFR em $server..."
    host -l $1 $server
done
