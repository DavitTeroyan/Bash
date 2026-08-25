#!//bin/bash

result=$(ps aux --sort=-%mem | head -n 4)

echo "$result"
