#!/bin/bash
set -e

if [[ "$1" = "serve" ]]; then
    shift 1
    torchserve --start --ts-config /home/model-server/config.properties
else
    eval "$@"
fi


python 


# prevent docker exit
tail -f /dev/null
