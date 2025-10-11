#!/bin/bash  -xue

hg convert -s hg-omit-subrepos Unconv-DocViewTemplate DocViewTemplate.conv
rm -rf DocViewTemplate.main
hg convert -s hg-omit-subrepos DocViewTemplate.conv DocViewTemplate.main
cp -pv hgrc DocViewTemplate.main/.hg/hgrc
