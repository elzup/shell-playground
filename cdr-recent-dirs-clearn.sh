#!/bin/sh
out_file=~/.chpwd-recent-dirs-clearn

cat ~/.chpwd-recent-dirs \
  | sed -e 's/^..\(.*\)./\1/g' \
  | while read line
do
  if [ -d "$line" ]; then
    echo "\$'$line'" >> $out_file
  fi
done

mv $out_file ~/.chpwd-recent-dirs