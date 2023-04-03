#!/bin/bash

script_name=$(basename "$0")

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    if [ -z "$2" ]; then
        for i in {1..100}
        do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Nazwa skryptu: $script_name" >> log$i.txt
            echo "Data utworzenia: $(date)" >> log$i.txt
        done
        echo "Utworzono 100 plików log"
    else
        for i in $(seq 1 $2)
        do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
            echo "Data utworzenia: $(date)" >> log$i.txt
        done
        echo "Utworzono $2 plików log"   
    fi
fi