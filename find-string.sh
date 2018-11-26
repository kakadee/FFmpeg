#!/bin/bash


if [ $# -ne 3 ]; then
	echo "The number of arguments must be 3"
	exit 1
else
	echo "Finding..."
fi

DIRECTORY=$1
NAME=$2
TARGET_STRING=$3

echo $DIRECTORY
echo $NAME
echo $TARGET_STRING
echo ====================================

FILES=`find $DIRECTORY -type f -name "$NAME"`
#echo $FILES

for file in $FILES; do
	echo "starting scanning ${file}"
	cat -n $file | grep ${TARGET_STRING}
done
