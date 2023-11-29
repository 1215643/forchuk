#!/bin/bash
if [ $# -ne 1 ]
then
	echo "error "
	exit 1
fi
zip_file="$1"
  # Check if the zip file exists
 if [ ! -f "$zip_file" ]
 then
      echo "error zip file not found"
      exit 1
 fi
     
  unzip -o "$zip_file"
  unzip -o my_archive.zip -d extracted_files
     
   echo extraction complete
                     
