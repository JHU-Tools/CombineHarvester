#!/bin/sh
set -x
set -e

if [ -z ${CMSSW_BASE+x} ]; then
  echo "CMSSW environment not set!";
else
  pushd $CMSSW_BASE/src
  mkdir CombineHarvester; cd CombineHarvester
  git init
  git remote add origin https://github.com/JHU-Tools/CombineHarvester.git
  git config core.sparsecheckout true; echo CombineTools/ >> .git/info/sparse-checkout
  git pull origin master
  popd
fi
