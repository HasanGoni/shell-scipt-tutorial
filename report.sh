#!/bin/sh 

report="$HOME/text_editor/report/report-$(date +%Y-%m-%d).md"
if [ ! -f $report ]; then
    echo -e "## Report for $(date +%Y-%m-%d)" > $report
fi

vim -c "norm Go" \
	-c "norm Go## $(date +%H:%M)" \
	-c "norm zz" \
	-c "startinsert" $report
