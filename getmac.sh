#!/usr/bin/env bash
read -p " Enter the MacAddress : " MacAddress
read -p "Enter the Field Name ex vendorDetails (or) blockDetails (or) macAddressDetails (or with subfield) vendorDetails.companyName : " fieldname
macdetails=$(curl -Gs "https://api.macaddress.io/v1?apiKey=$APIKEY&output=json&search=$MacAddress" | jq ".$fieldname" 
echo $macdetails 
#associated with that Mac Address $MacAddress
