#!/bin/bash

FILES="bashrc cdecd screenrc tmux.conf"
TIMESTAMP=$(date +%s)

for f in $FILES
do
    fpath=$HOME/.$f

    if [ -h "$fpath" -o -d "$fpath" ]
    then
        echo "Remove ${fpath} (`stat --format=%F ${fpath}`)"
        rm ${fpath}
    elif [ -f "$fpath" ]
    then
        read -p "Do you want to backup exist ${fpath} ? (y/N): " backup
        if [ "$backup" == "y" -o "$backup" == "Y" ]
        then
            new_fpath=${fpath}.bak.${TIMESTAMP}
            mv ${fpath} ${new_fpath}
            echo "Backup ${fpath} to ${new_fpath}"
        fi
    fi
done

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
for f in $FILES
do
    fpath=$SCRIPTPATH/$f
    linkname=$HOME/.$f
    echo "Create symlink $linkname"
    ln -s $fpath $linkname
done
