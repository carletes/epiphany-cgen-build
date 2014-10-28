#!/bin/sh

cgen_repo="https://github.com/adapteva/epiphany-cgen.git"
cgen_dir="/vagrant/epiphany-cgen"

if [ ! -d $cgen_dir ] ; then
  echo "Checking out $cgen_repo .."
  git clone $cgen_repo $cgen_dir
fi
chown -R vagrant: $cgen_dir

(cd $cgen_dir &&
  ./configure &&
  make &&
  cd cgen &&
  make desc ARCH=epiphany &&
  make html ARCH=epiphany)
