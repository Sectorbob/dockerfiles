#!/bin/bash

if [ ! -z ${HTTP_PROXY+x} ]; then
    git config --global --add http.proxy $HTTP_PROXY
fi
if [ ! -z ${http_proxy+x} ]; then
    git config --global --add http.proxy $http_proxy
fi
if [ ! -z ${HTTPS_PROXY+x} ]; then
    git config --global --add https.proxy $HTTPS_PROXY
fi
if [ ! -z ${https_proxy+x} ]; then
    git config --global --add https.proxy $https_proxy
fi

# Run dep with args
dep $@