#!/bin/bash  -x

set  -ue

project=${1%%/}
trg_dir=${2:-"${project}"}

sed -e "s:@REPO_NAME@:${project}:g" .template/hgrc.main.in  \
  | tee "${project}/hgrc.main"
sed -e "s:@REPO_NAME@:${project}:g" .template/hgrc.conv.in  \
  | tee "${project}/hgrc.conv"
sed -e "s:@REPO_NAME@:${project}:g" .template/run-hg-convert.sh.in  \
  | tee "${project}/run-hg-convert.sh"
