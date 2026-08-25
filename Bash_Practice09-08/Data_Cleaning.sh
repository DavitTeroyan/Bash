#!/bin/bash

raw_data="###SOME_TEXT_2024###"

data=${raw_data#\#\#\#}
data=${data%\#\#\#}
data=${data,,}

echo "$data"

