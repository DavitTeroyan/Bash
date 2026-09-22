#!/bin/bash

greet() {
	name=$1
	greeting=${2:-"Hello"}

	echo "$greeting, $name!"
}

greet "Arman" "Hello"
greet "Vache"
