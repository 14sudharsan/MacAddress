PROJECT DESCRIPTION
============================

   This project about program that will query https://macaddress.io ,returning with output MACaddress associated with which company and dockerize the below program that will take command line arguments.
   
Prerequisites
==========================
  1. Any Linux server(mine is ubuntu 18.04) with Docker installed.
  
  
  2. Install following linux packages curl and jq
  
  
  3.signup in https://macaddress.io and get the apikey to used in program to generate the output.


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
 















