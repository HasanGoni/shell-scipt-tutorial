#!/bin/sh

todo="$HOME/text_editor/todo_list.md"
if [ ! -f $todo ]; then
	echo -e "##To-Do list" > $todo
fi

vim -c "norm Go" \
	-c "norm zz" \
	-c "startinsert" $todo
