#!/bin/bash

add_user() {
	username=$1
	role=${2:-guest}

	echo "User $username is created as $role"

}

read -p "Enter username: " username
read -p "Enter role: " role

add_user "$username" "$role"
