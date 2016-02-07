#!/bin/sh

echo "Redirect output to null"

echo 

echo "List contents on this folder"
ls -ltrh .

echo

echo "Don't this contents on this folder"
ls -ltrh . > /dev/null