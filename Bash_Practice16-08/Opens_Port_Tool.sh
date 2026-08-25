#!/bin/bash

echo "Open TCP listening ports:"

ss -tlnp | awk '{print $4}'

