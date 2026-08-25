#/bin/bash

mkdir -p backup

for file in *.txt
do
	if [ -f "$file" ]; then
		found=1

		if [ -s "$file" ]; then
			cp "$file" backup/
			echo "Backed up: $file"
		fi
	fi
done

if [ $found -eq 0 ]; then
	echo "Warning: No .txt files found."
fi	
