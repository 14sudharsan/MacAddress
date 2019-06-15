#!/usr/bin/env bash
read -p " Enter the MacAddress : " MacAddress
read -p " Enter Apikey : "  APIKEY
read -p "Enter the Field Name ex vendorDetails (or with subfield) vendorDetails.companyName : " fieldname
macdetails=$(curl -Gs "https://api.macaddress.io/v1?apiKey=$APIKEY&output=json&search=$MacAddress" | jq ".$fieldname")
echo $macdetails
