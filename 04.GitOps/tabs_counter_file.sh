#!/bin/bash

# Определить имя файла
filename="file_with_tabs.txt"

# Использовать команду grep для подсчета количества табуляций
count=$(grep -o $'\t' $filename | wc -l)

# Вывести количество табуляций в файле
echo "Количество табуляций в файле $filename: $count"
