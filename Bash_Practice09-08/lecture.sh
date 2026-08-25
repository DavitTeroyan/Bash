#!/bin/bash

dir_path=

echo "input dir name"
read $dir_path 
read -p "inut file name" file_name

ls -l $dir_path | grep $file_name
