#!/bin/sh

if cat $1
then
	echo 'File found'
else
	echo 'File not found'
fi

