#!/bin/bash
autossh -M 0 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -nNT -N -R 1526:localhost:11788 -p 1922 sid@159.203.183.245
