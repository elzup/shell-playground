#!/bin/sh
# ./cdr-recent-dirs-clearn.sh > ~/.chpwd-recent-dirs-clearn

cat ~/.chpwd-recent-dirs \
  | sed -e 's/^..\(.*\)./\1/g' \
  | while read line
do
  if [ -d "$line" ]; then
    echo "\$'$line'"
  fi
done

echo '$ mv ~/.chpwd-recent-dirs-clearn ~/.chpwd-recent-dirs'