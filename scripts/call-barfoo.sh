#!/usr/bin/env bash
!/bin/bash

URL=https://8e6gue6o5d.execute-api.eu-west-1.amazonaws.com/prod

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
