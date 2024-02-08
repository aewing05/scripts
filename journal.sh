#!/bin/bash

FILEPATH="/Users/aewing/Library/Mobile Documents/iCloud~md~obsidian/Documents/aewing notes/Journal Entries"

read -d '\n' journaltemplate << EndOfText
---
tags: [journal]
---

## Daily Writing


## Habit Tracking
- [] Exercise
- [] Meditate
EndOfText

TODAY=$(date '+%Y-%m-%d')
FILENAME="$TODAY-journal-entry.md"
FULL_PATH="$FILEPATH/$FILENAME"

if ! [ -f "$FULL_PATH" ]; then
    echo "Creating Journal Entry: $FILENAME"
    $(touch "$FULL_PATH")
    echo "$journaltemplate" > "$FULL_PATH"    
fi

echo "Journal Entry Already Exists! Accessing Now"
nvim "$FULL_PATH"
