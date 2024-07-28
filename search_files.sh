#!/bin/bash

echo "Что хотите сделать?"
echo "1 Найти все текстовые файлы в файлах "

read -p "Пишите сюда цифру " number 



if [ $number -eq 1 ]; then
    find . -type f -name "*.txt"

fi    