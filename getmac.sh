#!/bin/bash
#capture current working directory
cwd=$(pwd)

#input file for macaddress
filepath=$cwd/macaddress-input.txt

#check condition for macaddress inputfile
if [ -f $filepath ]
then
    if [ -s $filepath ]
    then
        echo ""
    else
        echo "File exists but empty"
        exit
    fi
else
    echo "File not exists $filepath"
    exit
fi

#getting apikey from user input
read -p " Enter the apikey : " apikey

if  [ "$apikey" == "help" ]

then
        cat $cwd/help_page
exit
fi


#getting field name from user input
read -p "Enter the Field Name : " fieldname

while IFS= read -r line

do
        curl -Gs "https://api.macaddress.io/v1?apiKey=$apikey&output=json&search=$1"$line | jq ".$fieldname "

done < "$filepath"
exit
