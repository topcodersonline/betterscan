#!/bin/sh -l

export CODE_DIR=${PWD}
git config --global --add safe.directory $CODE_DIR
cd $CODE_DIR
cd $CODE_DIR && checkmate init
cd $CODE_DIR && checkmate git init
cd $CODE_DIR && checkmate git analyze --branch `git rev-parse --abbrev-ref HEAD`
cd $CODE_DIR && checkmate issues html
mv report.* .checkmate
