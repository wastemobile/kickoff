#!/bin/bash

  filename="vendor.csv"
  if [ -f $filename ] 
  then
    while IFS="," read one two
    do
      git submodule add "$one" "$two"
    done < "$filename"
    git submodule update --init
  else
    echo "錯誤：找不到 vendor.csv 檔案！指令終止。"
  fi
