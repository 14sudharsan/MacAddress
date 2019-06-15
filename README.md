# Prerequisite
* Install following softwares like Docker , Git client on your system
* Apikey has to be aquired with https://macaddress.io


# Overview :
This tool aims to obtain the necessary details about the mac address from https://macaddress.io


Step 1 Git clone this repository

git clone https://github.com/14sudharsan/MacAddress.git



Step 2 Invoke the following command to execute wrapper script  with the 

First argument as MacAddress , Second argument as Apikey and Third argument with below options

cd MacAddress

./setup-getmacid.sh 

Help page to display  Field Names options (y/n)?

Enter the MacAddress : Enter valid mac address
 
Enter Apikey : enter your apikey
 
Enter the Field Name example vendorDetails (or)  with subfield vendorDetails.companyName : # vendorDetails
 
Options: for Field name
 
 - vendorDetails
      * It will display vendor details to the respective mac address 
      
 - vendorDetails.companyName
      * It will display precisely companyName subfield from vendor details use this option
      
 - If you leave blank and press enter
      * It will display all the details of the respective mac address 
 















