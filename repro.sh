#!/bin/bash
set -eux
mvn clean package

path='module1/target/classes/example/Example2$$Lambda$1.class'
if [[ -e $path ]]; then
	echo "Bug present, wrong path: $path"
	exit 1
fi
