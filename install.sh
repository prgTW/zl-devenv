#!/bin/sh

workingDir=`pwd`
currentDir=$(cd $(dirname "$0") && pwd -P)
cd "$currentDir"

for file in `ls -1 $currentDir/install/*`
do
	sh "$file"
done

echo CLONE YOUR REPO INTO "repo" DIRECTORY
echo F.EX.: git clone ssh://git@github.com/vendor_name/repo_name repo
echo
echo AND THEN RUN "fig up -d" TO RUN THE ENVIRONMENT
echo

cd "$workingDir"
