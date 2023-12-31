#!/bin/bash

#set -x

# ---------------------------------------------------------
#echo "-- dirname & source ---"
#echo "текущая директория"
#echo "$(dirname "$0")"
#echo "подключаем скрипт с функцией из текущей директории для распечатки аргумента \"arg\" и \"brg\""
#. $(dirname $0)/external_function.sh
#show_arg "arg" "brg"

#read -p "Press enter to continue
#"

# ---------------------------------------------------------
echo "-- двойные кавычки ---"
echo "сохраняняют буквальное значение выводимого текста, за исключением $ ' \" \ newline"

echo "Brace expansion в двойных кавычках и без"
echo "a,{c,d},d" " - буквальное значение в кавычках"
echo a,{c,d},d " - а вот это без кавычек"
echo 'param="bla" - присвоим значение переменной и выведем ее:'
param="bla"
echo "$param" " - вот результат"

read -p "Press enter to continue
"

# ---------------------------------------------------------
echo "-- одинарные кавычки ---"
echo "сохраняняют буквальное значение выводимого текста"
echo 'a,{c,d},d'
echo a,{c,d},d
echo "выведем значение $param в одинарных кавычках"
echo '$param' " - вот результат"

read -p "Press enter to continue
"

# ---------------------------------------------------------
echo "-- tilde expansion ---"
echo "ничего интересного, просто некоторые штуки, касающиеся $PWD и $OLDPWD"

echo 'вывод домашней директории - echo ~'
echo echo ~
echo 'вывод текущей директории - echo ~+'
echo ~+
echo 'вывод директории, из которой пришли - echo ~-'
echo ~-

read -p "Press enter to continue
"

# ---------------------------------------------------------
echo '-- parameter expansion - ${...} ---'

echo -e '\n - expansion в значение по умолчанию при выводе переменной - ${v:-unset}'
echo 'выведем значение переменной v ${v-default_value}'
echo ${v-default_value}

echo -e '\n - задание "инициализирующего" значения в случае, если значение переменной не задано  - : ${var:=DEFAULT}'
: ${var:=DEFAULT}
echo "не задали var и распечатали"
echo $var

read -p "Press enter to continue
"

# ---------------------------------------------------------
echo '--- Substring Expansion ${parameter:offset} ${parameter:offset:length} ---'
echo 'примеров нет, все понятно'
echo 'хотя вот с массивами это интересно'
echo 'array[0]=01234567890abcdefgh'
echo 'echo ${array[0]: -7:0}'
array[0]=01234567890abcdefgh
echo ${array[0]: 7:2}
echo 'echo $array=(0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h)'
array=(0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h)
echo 'echo ${array[@]:7:2}'
echo ${array[@]:7:2}

# ---------------------------------------------------------
echo '--- Что-то интересное с set ---'
echo '"set -e" - выход из скрипта при первой же ошибке'
echo '"set -x" - дебаг режим'
echo '"set" - вывести все переменные окружения'


read -p "Press enter to continue
"
# ---------------------------------------------------------


# ---------------------------------------------------------
echo '--- Arithmetic Expansion  ---'
echo 'должно быть все просто $(( expression ))'


read -p "Press enter to continue
"
# ---------------------------------------------------------

# ---------------------------------------------------------
echo '--- Process Substitution - отдельная непонятная тема ---'


read -p "Press enter to continue
"
# ---------------------------------------------------------

# ---------------------------------------------------------
echo '--- Substring Expansion ${parameter:offset} ${parameter:offset:length} ---'


read -p "Press enter to continue
"
# ---------------------------------------------------------

