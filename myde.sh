#!/bin/bash

if [ "${1:0:1}" == "/" ]; then
  dir_path=$(dirname "${1}")
else
  dir_path=$(pwd)/$(dirname "${1}")
fi

if [ -d "${1}" -o "${1}" == "" ]; then
  docker run -it --rm -v ${dir_path}/$(basename "${1}"):/home/myde/work yukoba0616/myde
else
  docker run -it --rm -v ${dir_path}:/home/myde/work yukoba0616/myde nvim $(basename "${1}")
fi
