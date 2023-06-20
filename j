#!/usr/bin/env bash

if [[ -z "${JPATH}" ]]; then
    echo "ERROR: JPATH env variable not set"
    exit 1
fi

now="$(date +'%Y-%m-%d %H:%M:%S')"
echo -e "-------------${now}-------------\n" >> $JPATH/journal.txt

case $1 in
    "")
        $VISUAL +"norm Go" +"startinsert" $JPATH/journal.txt
        ;;
    *)
        echo "$@" >> $JPATH/journal.txt
        ;;
esac

