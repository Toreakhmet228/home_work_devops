#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "нужeн супер пользватель "
    sudo su

fi

apt update 


updates=$(apt list --upgradable 2>/dev/null | grep -v "Listing..." | wc -l)
if [ "$updates" -eq 0 ]; then
  echo "Обновлений нет." 
else
  apt upgrade -y 
  echo "все норм обновили систему"
fi