#!/bin/bash

dirs=( $(ls | grep 'src\|include\|extern\|build') )
needed_dirs=("src" "include" "extern" "build")

function check_str() {
  local string=$1
  for element in ${dirs[@]}; do
    if [ "$element" == "$string" ]; then
      return 1
    fi
  done
  return 0
}

for element in ${needed_dirs[@]}; do
  check_str "${element}"
  state=$?
  if [ $state -eq 1 ]; then
    echo "Already exists $element"
  else
    mkdir "$element"
    echo "Created directory: $element"
  fi
done

current_dir=$(pwd)
list=$(ls | grep "CMakeLists.txt")
if [ -n "$list" ]; then
  echo "Already exists: CMakeLists.txt"
else
  cp ~/scripts/temp/temp_cmake/cmake_temp.txt .
  mv cmake_temp.txt CMakeLists.txt
  echo "Created file: CMakeLists.txt"
fi
