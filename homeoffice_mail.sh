#!/bin/sh

HomeofficeFile="$HOME/text_editor/Homeoffice/homeoffice.md"
if [[ -f $HomeofficeFile ]]
then
    rm -r $HomeofficeFile
fi

if [ ! -f $HomeofficeFile  ]; then

	echo -e "Hallo Elli, \n\n# Homeoffice Zeit $(date +%Y-%m-%d) \n\n\n Anfang Zeit 7.30 Uhr \n End Zeit $(date +%H:%M) Uhr \n pause 12:00 bis 12:45 Uhr\n \n danke im voraus \nVG" > $HomeofficeFile
fi

vim  -c "norm ggVGy" $HomeofficeFile

