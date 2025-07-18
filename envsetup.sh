#!/bin/bash

if [ -d "env" ]; then
    echo "Python virtual environment already exists."
else
    python3 -m venv env   
fi

echo $PWD
source env/bin/activate

if [-d "logs"]  then
    echo "Logs directory already exists."
else
    mkdir logs
    touch logs/error.log
    touch logs/info.log
fi

sudo chmod -R 777 logs
echo "environment setup complete. Logs directory created with appropriate permissions."