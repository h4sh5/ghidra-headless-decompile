#!/bin/bash

#script to automatically decompile and output source code of a binary with ghidra

GHIDRA_PATH=~/Documents/ghidra_9.0.4
DECOMPILE_SCRIPT_PATH=.

if [ "$#" -ne    2 ]
then 
    echo "$0 <binary path> <output source path>"
    exit
fi

#remove gpr and rep files first (CAREFUL!)
rm -rf *.gpr *.rep

time $GHIDRA_PATH/support/analyzeHeadless . tmp_ghidra_project -import $1  -postscript $DECOMPILE_SCRIPT_PATH/Decompile.java $2


