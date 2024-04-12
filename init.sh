#!/bin/bash

CMD_HOME=`pwd`


if [ ! -d "node_modules" ]; then
    echo "Installing npm packages..."
    npm install
fi

# init config
grep -v "ACCESS_TOKEN" .env.example > .env
ACCESS_TOKEN_ENV="${ACCESS_TOKEN:-}"
if [ -n "$ACCESS_TOKEN_ENV" ]; then
    echo "ACCESS_TOKEN=${ACCESS_TOKEN_ENV}" >> .env
fi

