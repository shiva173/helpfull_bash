#!/bin/bash


if type -t wevtull &> /dev/null;
then
	OS=MSWindows
elif type -t scutil &> /dev/null;
then
	OS=macOS
else
	OS=Linux
fi
echo $OS