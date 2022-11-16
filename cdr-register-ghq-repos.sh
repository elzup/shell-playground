#!/bin/sh
out_file=~/.chpwd-recent-dirs-ghq

files=$(find ~/.ghq -type d -mindepth 3 -maxdepth 3)

for f in $files; do
  echo "\$'$f'" >> $out_file
done

echo "cat $out_file >> ~/.chpwd-recent-dirs"
echo "rm $out_file"