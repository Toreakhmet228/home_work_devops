#!/bin/bash 


read -p "напишите название txt фала " name 


word_count=$(wc -w < $name)


echo "в файле $name : $word_count слов"