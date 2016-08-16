#!/bin/bash

#arXiv is dumb. Need to package TeX files in specific way for submission. This script adjust paths and copies everything to a new folder and zips it up for you.

#Create an arXiv package folder in the desired directory
DEST=$1"arXiv_pkg/"
if ! [ -d "$DEST" ]; then
  mkdir $DEST
fi

#Clean up
if [ "$2" == "clean" ]; then
	echo "Cleaning up archive and directory at "$DEST
	rm $1"arXiv_pkg.tar.gz" && rm -r $DEST
	exit 0
	
fi

#Make sure we are resolving paths correctly (even if not run in this dir)
PATH2FILES=$(cd `dirname $0` && pwd)"/"

#Copy needed TeX files
cp $PATH2FILES"tex/paper."{"tex","bbl"} $DEST
#cp $PATH2FILES"tex/aasjournal.bst" $DEST
cp $PATH2FILES"tex/aastex.cls" $DEST

#Copy figure files
if ! [ -d "${DEST}results" ]; then
	mkdir $DEST"results"
fi
cp $PATH2FILES"results/f"{"1a","1b","2","3a","3b","4","5a","5b","6","7","8"}".eps" $DEST"results"
cp $PATH2FILES"results/table_a1.tex" $DEST"results"

#Replace relative paths to results
OLD_PATH='../results/'
NEW_PATH='results/'
sed -i '' "s%${OLD_PATH}%${NEW_PATH}%g" $DEST"paper.tex"

#Tar the file
tar cvzf $1"arXiv_pkg.tar.gz" $DEST
