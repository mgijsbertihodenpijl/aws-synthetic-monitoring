#!/usr/bin/env bash
!/bin/bash

URL="YOUR ENPOINT"

echo ${URL}
while true; do
    i=0
    R1=$(( ( RANDOM % 10 )  + 1 ))
    R2=$(( ( RANDOM % 10 )  + 1 ))
    R3=$(( ( RANDOM % 10 )  + 1 ))
    while [ $i -lt $R1 ]; do
        curl -i ${URL}/bar
        i=$[$i+1]
    done
    i=0
    while [ $i -lt $R2 ]; do
        curl -i ${URL}/barfoo
        i=$[$i+1]
    done
    i=0
    while [ $i -lt $R3 ]; do
        curl -i ${URL}/foo
        i=$[$i+1]
    done
   sleep 10
done
