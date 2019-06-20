#!/bin/bash
SUCCESS=0
for php_file in $(find . -type f -name "*.php");
do
   echo ################################
   if ! php -l $php_file; then
      SUCCESS=1
   fi
      echo ################################
done;

exit $SUCCESS;
