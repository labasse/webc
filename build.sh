#!/bin/bash

EMSDK_PATH=/workspaces/emsdk
CC=emcc
SRC="$1/*.cpp"
INC=
EXPORT=greetings
METHODS=ccall
OPT="-gsource-map -sASYNCIFY"
OUTPUT=$1/www/a.out.js

source $EMSDK_PATH/emsdk_env.sh
$CC $SRC -I$INC $OPT -sEXPORTED_FUNCTIONS=$EXPORT -sEXPORTED_RUNTIME_METHODS=$METHODS -o $OUTPUT

echo Live preview should be listening on http://localhost:$2

