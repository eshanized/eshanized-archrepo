#!/bin/bash

rm eshanized-archrepo*

echo "####################################"
echo "Repo Add ++"
echo "####################################"
repo-add -s -n -R eshanized-archrepo.db.tar.gz *.pkg.tar.zst

sleep 1

rm eshanized-archrepo.db
rm eshanized-archrepo.db.sig

rm eshanized-archrepo.files
rm eshanized-archrepo.files.sig

mv eshanized-archrepo.db.tar.gz eshanized-archrepo.db
mv eshanized-archrepo.db.tar.gz.sig eshanized-archrepo.db.sig

mv eshanized-archrepo.files.tar.gz eshanized-archrepo.files
mv eshanized-archrepo.files.tar.gz.sig eshanized-archrepo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
