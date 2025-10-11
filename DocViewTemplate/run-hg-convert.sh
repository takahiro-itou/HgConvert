#!/bin/bash

set  -xue

hg=$(which hg)
conv_src='hg-omit-subrepos'

project=DocViewTemplate


"${hg}" convert -s "${conv_src}"  "Unconv-${project}"  "${project}.conv"

rm -rf "${project}.main"
"${hg}" convert -s "${conv_src}"  "${project}.conv"  "${project}.main"

cp -pv  'hgrc'  "${project}.main/.hg/hgrc"
