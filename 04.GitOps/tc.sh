#!/bin/bash

# Определить имя корневой папки
root_directory="/home/oksana/md-sa2-23-23"

# Использовать функцию find для поиска всех файлов в корневой папке и ее подпапках
total_count=0
while IFS= read -r -d '' file
do
    # Проверить, является ли текущий файл файлом, а не папкой
    if [[ -f $file ]]; then
        # Использовать команду grep для подсчета количества табуляций в текущем файле
        count=$(grep -o $'\t' "$file" | wc -l)
        echo "Количество табуляций в файле $file: $count"
        total_count=$((total_count + count))
    fi
done < <(find "$root_directory" -type f -print0)

# Вывести общее количество табуляций во всех файлах
echo "Общее количество табуляций во всех файлах: $total_count"
