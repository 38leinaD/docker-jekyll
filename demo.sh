#!/bin/bash

IP="127.0.0.1"

# for mac and windows
if command -v docker-machine >/dev/null 2>&1;
then
    eval "$(docker-machine.exe env --shell bash default)"
    IP=$(docker-machine ip)
fi

image=$(basename $(pwd))

# build docker image
docker build -t ${image} .

# clone sample jekyll site 
git clone https://github.com/getmicah/getmicah.github.io.git site

SITE=$(pwd)/site

# for cygwin; generate correct path on host
if command -v cygpath >/dev/null 2>&1;
then
    SITE=$(cygpath -u ${SITE} | cut -c 10-)
fi

# generate site and serve
echo -e "\e[95mSite will be served under http://${IP}:4000\e[0m"

# on cygwin, remove the "-it"
docker run -it --rm=true -v ${SITE}:/src -p 4000:4000 jekyll /bin/bash -c "cd /src && jekyll serve --host=0.0.0.0 --watch --force_polling"