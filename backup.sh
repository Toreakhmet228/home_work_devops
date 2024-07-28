#!/bin/bash

SOURCE_DIR="/home/laptop/Рабочий стол/ss/devops_home_work/MyDirectory"

BACKUP_DIR="/home/laptop/Рабочий стол/ss/devops_home_work/backup"

BACKUP_FILE="$BACKUP_DIR/backup_$(date +'%Y-%m-%d-%H-%M-%S').tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"



echo "создали резервную копию теперб добавтье в файл crontab через команду crontab -e с парамаетром 50 9 * * 0 /home/laptop/Рабочий\стол/ss/devops_home_work/backup.sh"