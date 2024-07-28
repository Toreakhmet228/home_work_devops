#!/bin/bash

read -p "Напишите путь к файлу, к примеру assigment5/file1.txt: " file_path

if [ ! -f "$file_path" ]; then
    echo "Файла нет."
    exit 1
fi

while read -r line; do
    echo "$line" | rev
    sleep 1
done < "$file_path"
