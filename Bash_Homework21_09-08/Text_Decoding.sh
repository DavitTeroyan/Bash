#!/bin/bash

encoded="THiS_iS_A_TExT"

encoded=${encoded//_/ }
encoded=${encoded,,}

echo "$encoded"

