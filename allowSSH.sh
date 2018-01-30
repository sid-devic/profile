#!/bin/bash
createTunnel() {
    /usr/bin/ssh -f -N -R 10022:localhost:10022 -L19922:159.203.183.245:10022 159.203.183.245
    if [[ $? -eq 0 ]]; then
        echo Tunnel to myutd.tk created successfully
    else
        echo An error occurred creating a tunnel to myutd.tk. Return code: $?
    fi
}
/usr/bin/ssh -p 19922 localhost ls > /dev/null
if [[ $? -ne 0 ]]; then
    echo Creating new tunnel connection to myutd.tk
    createTunnel
fi

