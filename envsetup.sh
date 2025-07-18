#!/bin/bash

if [ -d "venv" ]; then
    echo "Python virtual environment already exists."
else
    python3 -m venv venv   
fi

echo $PWD

source venv/bin/activate

pip3 install -r requirements.txt


if [-d "logs"];  then
    echo "Logs directory already exists."
else
    mkdir logs
    touch logs/error.log logs/info.log
fi

sudo chmod -R 777 logs
echo "environment setup complete. Logs directory created with appropriate permissions."