#!/bin/sh
text_editor="$HOME/text_editor/test.md"
if [ ! -f $text_editor ]; then
       touch $text_editor 
fi
vim -c "norm ggVGd" \
    -c "startinsert" $text_editor

