#!/usr/bin/bash
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

#getting field name from user input
read -p "Enter the Field Name : " fieldname



#help page output
while IFS= read -r help_page
do
echo $help_page
done < "$cwd/help_page"

if test "$fieldname" = "help"
then
     exit
fi



while IFS= read -r line

do
        curl -Gs "https://api.macaddress.io/v1?apiKey=$apikey&output=json&search=$1"$line | jq ".$fieldname "

done < "$filepath"
exit
