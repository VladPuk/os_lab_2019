#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Ошибка: не передано ни одного числа."
    exit 1
fi
sum=0
count=$#
for num in "$@"; do
    sum=$((sum + num))
done
avg=$(awk "BEGIN {printf \"%.2f\", $sum/$count}")
echo "Количество чисел: $count"
echo "Среднее арифметическое: $avg"
