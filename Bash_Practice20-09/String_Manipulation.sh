#!/bin/bash


raw="hello_world_2026"

raw=${raw//_/ }
raw=${raw^^}

echo "$raw"
