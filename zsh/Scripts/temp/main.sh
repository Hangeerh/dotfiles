#!/bin/bash

if [ -n "$1" ]; then
  if [ "$1" == "cmake" ]; then
    ~/scripts/temp/temp_cmake/temp_cmake.sh
  fi
else
  echo "Incorrect usage: Correct usage is"
  echo "temp [TEMPLATE]"
fi
