#!/usr/bin/env bash
# remove solc from truffle to use our version
rm -rf node_modules/truffle/node_modules/solc
for file in "templated-tests/configs/token"/**/*
do
  echo "testing file "$file
  source templated-tests/compile-token-template.sh $file && source templated-tests/test-token-template.sh $file || error "failed test "$file
done