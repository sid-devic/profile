#!/bin/bash

COUNTER=11772

while [  $COUNTER -lt 65535 ]; do

        echo $COUNTER

        curl portquiz.net:$COUNTER --connect-timeout 1

        let COUNTER=COUNTER+1
done


