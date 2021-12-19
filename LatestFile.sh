#!/bin/bash

read -p "DATE(YYYY.MM.DD) -> " NEW

OLD=$(cat ./config | sed -n -e "s/\RELEASE\_VERSION\=\(.*\)$/\1/p")
sed ./config -i -e "s/\(\RELEASE\_VERSION\=\).*$/\1$NEW/"
cp ./src/template.md ./src/$NEW.md

echo "Completed changing the date:" $OLD "->" $NEW
