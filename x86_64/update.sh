#!/bin/bash

rm eshanized-penetration*

echo "repo-add"
repo-add -s -n -R eshanized-penetration.db.tar.gz *.pkg.tar.zst

sleep 1

rm eshanized-penetration.db
rm eshanized-penetration.db.sig

rm eshanized-penetration.files
rm eshanized-penetration.files.sig

mv eshanized-penetration.db.tar.gz eshanized-penetration.db
mv eshanized-penetration.db.tar.gz.sig eshanized-penetration.db.sig

mv eshanized-penetration.files.tar.gz eshanized-penetration.files
mv eshanized-penetration.files.tar.gz.sig eshanized-penetration.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
