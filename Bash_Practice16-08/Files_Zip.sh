#/bin/bash

mkdir -p compressed

for dile in *.txt
do
	zip "compressed/${file%.txt}.zip" "$file"
done	
