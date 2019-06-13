# Purpose of this docker container
 
Our ultimate aim is to get Company Name associated with that MAC address

Step 1 Git clone this repository

git clone https://github.com/14sudharsan/MacAddress.git

Step 2 Execute the following command to execute wrapper script

./setup-getmacid.sh

It will automatically download docker image from docker hub and it will prompt 

# if you want to print precisely companyName follow below step

Enter the MacAddress : 34:02:86:6b:ef:0e

Enter Apikey : kindly enter valid api key

Enter the Field Name example vendorDetails (or)  with subfield vendorDetails.companyName : vendorDetails.companyName

# Intel Corp


 if you want to print vendordetails follow below step

 Enter the MacAddress : 34:02:86:6b:ef:0e

Enter Apikey : kindly enter valid api key 

Enter the Field Name example vendorDetails (or)  with subfield vendorDetails.companyName : vendorDetails

# { oui: 340286, isPrivate: false, companyName: Intel Corp, companyAddress: Lot 8, Jalan Hi-Tech 2/3 Kulim Kedah 09000 MY, countryCode: MY }














