#!/bin/bash

TEMPLATE_TYPE=$1

if [ "$TEMPLATE_TYPE" != "journal" ] && [ "$TEMPLATE_TYPE" != "dailynote" ]
then
    echo "Unsupported template"
    exit
fi

FILEPATH="/Users/aewing/Library/Mobile Documents/iCloud~md~obsidian/Documents/aewing notes/$TEMPLATE_TYPE"

TODAY=$(date '+%Y-%m-%d')
FILENAME="$TODAY-$TEMPLATE_TYPE-entry.md"
FULL_PATH="$FILEPATH/$FILENAME"

INITIAL_WORKING_DIRECTORY=$(pwd)
cd $(dirname $0)

template=`cat templates/$TEMPLATE_TYPE.txt`
if ! [ -f "$FULL_PATH" ]
then
    echo "Creating Entry: $FILENAME"
    $(touch "$FULL_PATH")
    echo "$template" > "$FULL_PATH"    
else
    echo "Entry already exists"
fi

echo "Accessing Now"
nvim "$FULL_PATH"
