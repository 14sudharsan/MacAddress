# Prerequisite
* Install following softwares docker , Git client on your system
* In order to fetch mac address details from https://macaddress.io/ first signup and get your apikey



# Overview :

Purpose of this docker container
 
Our ultimate aim is to get Company Name associated with that MAC address

Step 1 Git clone this repository

git clone https://github.com/14sudharsan/MacAddress.git

Step 2 Invoke the following command to execute wrapper script setup-getmacid.sh 

First it will automatically create docker image from docker file 

Then spawn docker container from the same image 

# Usage

./setup-getmacid.sh

Please wait for a while docker building an image from dockerfile

Once successfully Docker container spawn from container image

Then you will get an prompt like stated below

 Enter the MacAddress : Enter valid mac address
 Enter Apikey : enter your apikey
 Enter the Field Name example vendorDetails (or)  with subfield vendorDetails.companyName : # Field name
 
 Options: for Field name
 
 - vendorDetails
      * It will display vendor details to the respective mac address which you have entered above
      
 - vendorDetails.companyName
      * It will display precisely companyName subfield from vendor details use this option
      
 - 
      * If you leave blank in the field name prompt and press enter will display all the details to the respective mac address 
 















