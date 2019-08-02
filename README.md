# ghidra-headless-decompile

this script will delete any .gpr and .rep (ghidra project files) in the directory before it does the decompiling, so that things can be imported properly.

It will not delete them after decompiling, so you can open them.

ghidra can be downloaded from https://ghidra-sre.org/

### You will need to modify GHIDRA_PATH variable in the script before running it.

### Example Usage:
```
chmod +x gd_decomp.sh
./gd_decomp.sh ~/Downloads/binary_file /tmp/source.c
```
