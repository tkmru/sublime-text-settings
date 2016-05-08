#!/bin/bash

function logging(){
    echo "> "$*
    $*
}

SETTINGFILES=($(ls | grep -v 'README.md'))

for FILE in ${SETTINGFILES[@]}; do
    if [ ! -f "~/Library/Application Support/Sublime Text 3/Packages/User/$FILE" ]; then
        logging ln -s $PWD/$FILE  "~/Library/Application Support/Sublime Text 3/Packages/User/$FILE"
    else
        echo $FILE already exists.
    fi
done