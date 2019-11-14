#!/bin/bash
dir=$1

if [[ $1 == "-h" || $1 == "--help" ]]  ##Help message to print usage.
  then 
    echo "Usage: $0 [dir]"
fi

if [[ $#<1 || $#>1 ]]    ##Confirm that there is only one argument.
  then 
    echo "Usage: $0 [dir]"
    exit 0;
fi

if ! [[ -d $1 ]]          ##Confirms that argument is a directory.
  then
    echo "Usage: $0 [dir]"
    exit 0;

fi

touch -c "$dir"/*            ##Prints out all files in the directory. 
ls "$dir"


if [[ "$(ls -A $dir)" ]]      ##If the directory is empty insert the directory name into the the designated file.
  then
   echo""
else
    echo "$1" >> EmptyDir.txt
fi
