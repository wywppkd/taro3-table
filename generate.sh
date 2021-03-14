#!/bin/bash

echo "--- BUILD START ---"

# delete
rm -rf build
mkdir build

# move
cp -r src/components/Table build

# complie
./node_modules/.bin/lessc build/Table/style.less build/Table/style.css -x
./node_modules/.bin/babel build/Table/Table.tsx --out-file build/Table/Table.js

# clear
rm -rf build/Table/style.less
rm -rf build/Table/Table.tsx

echo "--- BUILD FINISH ---"
