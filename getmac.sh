#!/usr/bin/env bash
read -p "Help page to display  Field Names (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo "
        
       Options: for Field name
       
vendorDetails

    * It will display vendor details to the respective mac address

vendorDetails.companyName

    * It will display precisely companyName subfield from vendor details use this option

If you leave blank and press enter

    *It will display all the details of the respective mac address
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
