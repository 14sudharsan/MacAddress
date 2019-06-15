#!/usr/bin/env bash
read -p "Do you need any help to get  Field Names and expected outputs (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo "
********************************************************************************************************************************************
Enter the Field Name : vendorDetails
Expected output
{ oui: 340286, isPrivate: false, companyName: Intel Corp, companyAddress: Lot 8, Jalan Hi-Tech 2/3 Kulim Kedah 09000 MY, countryCode: MY }
********************************************************************************************************************************************
Enter the Field Name : vendorDetails.companyName
Expected output
Intel Corp
********************************************************************************************************************************************
Enter the Field Name : Leave Empty and press Enter
Expected output
It will print entire details of the respective mac address
********************************************************************************************************************************************
"
    ;;
    * )
     echo   No
    ;;
esac
#!/usr/bin/env bash
read -p " Enter the MacAddress : " MacAddress
read -p " Enter Apikey : "  APIKEY
read -p "Enter the Field Name ex vendorDetails (or with subfield) vendorDetails.companyName : " fieldname
macdetails=$(curl -Gs "https://api.macaddress.io/v1?apiKey=$APIKEY&output=json&search=$MacAddress" | jq ".$fieldname")
echo $macdetails
