#!/bin/sh -l

export CODE_DIR=${PWD}
cd $CODE_DIR
git init && git add . && git commit -m "init"
cd $CODE_DIR && checkmate init
cd $CODE_DIR && checkmate git init
cd $CODE_DIR && checkmate git analyze
cd $CODE_DIR && checkmate issues
