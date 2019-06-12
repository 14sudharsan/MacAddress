#!/usr/bin/env bash
read -p " Enter the MacAddress : " MacAddress
json=$(curl -Gs "https://api.macaddress.io/v1?apiKey=at_j2YdcHWY1QH2N3B2VhsLhMJXjlfC4&output=json&search=$MacAddress" | jq ".vendorDetails.companyName" | sed 's/"//g')
echo $json associated with that Mac Address $MacAddress
