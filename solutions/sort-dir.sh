#!/usr/bin/env bash

set -euo pipefail

rainbow_colors=("red" "orange" "yellow" "green" "blue" "indigo" "violet")
rainbow_count=0

result=""
found_first=false

for file in PUZZLE/sortDirCOlor/*.txt; do
    if [[ $file == *"${rainbow_colors[$rainbow_count]}"* ]] && [ "$found_first" = false ]; then
        result+="$file"
        found_first=true
        ((rainbow_count++))
    fi

done

echo "$result"
