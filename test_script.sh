#!/bin/sh
file="$HOME/WinPython_win64/notebooks/MWS/test/test.py"
if [ ! -f $file ]; then
	echo "from pathlib import Path" > $file
fi

vim -c "norm Go" \
	-c "norm gg" \
	-c "norm zz" \
	-c "norm Go" \
	-c "startinsert" $file

