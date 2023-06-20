#!/usr/bin/env bash

if [[ -z "${JPATH}" ]]; then
    echo "ERROR: JPATH env variable not set"
    exit 1
fi

now="$(date +'%Y-%m-%d %H:%M:%S')"

case $1 in
    "")
        echo -e "-------------${now}-------------\n" >> $JPATH/journal.txt
        $VISUAL +"norm Go" +"startinsert" $JPATH/journal.txt
        ;;
    "view")
        $VISUAL +"norm G" $JPATH/journal.txt
        ;;
    *)
        echo -e "-------------${now}-------------\n" >> $JPATH/journal.txt
        echo "$@" >> $JPATH/journal.txt
        ;;
esac

