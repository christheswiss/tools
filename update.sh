#!/usr/local/bin/bash
apt-get update &
wait $!
yes | apt-get upgrade &
