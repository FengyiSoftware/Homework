#!/bin/bash

a=$(whoami)
echo "Username: $a"
a=$(pwd)
echo "path: $a"
a=$(uname -r)
echo "kernel : $a"
a=$(uname -m)
echo "CPU architecture :$a"
a=$PATH
echo "Current environment :$a"