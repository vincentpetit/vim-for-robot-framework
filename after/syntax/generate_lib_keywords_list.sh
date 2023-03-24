#!/bin/bash
file_name="$1"
param="\|"
while read line; do echo "$line$param"; done < $file_name  > $file_name.new
awk '$1=$1' ORS="\n\n" RS="\n\n" $file_name.new  > $file_name.new1
sed -i -e "s/\\\| /\\\|/g" $file_name.new1
awk '{print substr( $0, 1, length($0)-2)}' $file_name.new1 > $file_name.keywords_list
cat $file_name.keywords_list
rm -f $file_name.new $file_name.new1
