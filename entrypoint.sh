#!/bin/bash
mkdir -p /etc/matrixim/
cp /etc/matrixim/turnserver.conf /etc/turnserver.conf
/opt/coturn/bin/turnserver -o
tail -f /turn*.log 
