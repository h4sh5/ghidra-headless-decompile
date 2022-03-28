#!/bin/bash

#script to automatically decompile and output source code of a binary with ghidra

GHIDRA_PATH=~/ghidra_10.1_PUBLIC
DECOMPILE_SCRIPT_PATH=.

if [ "$#" -ne    2 ]
then 
    echo "$0 <binary path> <output source path>"
    exit
fi

echo "path to decompile script:" $DECOMPILE_SCRIPT_PATH

#remove gpr and rep files first (CAREFUL!)
rm -rf *.gpr *.rep

echo "running command:"
echo time $GHIDRA_PATH/support/analyzeHeadless . tmp_ghidra_project -import $1  -postscript $DECOMPILE_SCRIPT_PATH/Decompile.java $2
time $GHIDRA_PATH/support/analyzeHeadless . tmp_ghidra_project -import $1  -scriptPath $DECOMPILE_SCRIPT_PATH -postscript Decompile.java $2

