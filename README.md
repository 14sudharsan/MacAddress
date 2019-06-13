# Purpose of this docker container
 
Our ultimate aim is to get Company Name associated with that MAC address

Step 1 

Git clone this repository

git clone https://github.com/14sudharsan/MacAddress.git

Step 2

Execute the following command to execute wrapper script

./setup-getmacid.sh


It will automatically download docker image from docker hub and it will prompt for 

# Example Field name prompt if you leave blank it will print entire details of the mac address
san@san:~/mac$ ./getmac.sh 
 Enter the MacAddress : 34:02:86:6b:ef:0e
 Enter Apikey : xxxxxxxxxxxxxxxxxxxx
Enter the Field Name ex vendorDetails (or) blockDetails (or) macAddressDetails (or with subfield) vendorDetails.companyName : 
{ vendorDetails: { oui: 340286, isPrivate: false, companyName: Intel Corp, companyAddress: Lot 8, Jalan Hi-Tech 2/3 Kulim Kedah 09000 MY, countryCode: MY }, blockDetails: { blockFound: true, borderLeft: 340286000000, borderRight: 340286FFFFFF, blockSize: 16777216, assignmentBlockSize: MA-L, dateCreated: 2014-04-22, dateUpdated: 2015-09-27 }, macAddressDetails: { searchTerm: 34:02:86:6b:ef:0e, isValid: true, virtualMachine: Not detected, applications: [], transmissionType: unicast, administrationType: UAA, wiresharkNotes: No details, comment: } }


# Example if you want to print vendordetails follow below step
san@san:~/mac$ ./getmac.sh 
 Enter the MacAddress : 34:02:86:6b:ef:0e        
 Enter Apikey : at_j2YdcHWY1QH2N3B2VhsLhMJXjlfC4
Enter the Field Name ex vendorDetails (or) blockDetails (or) macAddressDetails (or with subfield) vendorDetails.companyName : vendorDetails
{ oui: 340286, isPrivate: false, companyName: Intel Corp, companyAddress: Lot 8, Jalan Hi-Tech 2/3 Kulim Kedah 09000 MY, countryCode: MY }



# Example if you want to print precisely companyName follow below step
san@san:~/mac$ ./getmac.sh 
 Enter the MacAddress : 34:02:86:6b:ef:0e
 Enter Apikey : at_j2YdcHWY1QH2N3B2VhsLhMJXjlfC4
Enter the Field Name ex vendorDetails (or) blockDetails (or) macAddressDetails (or with subfield) vendorDetails.companyName : vendorDetails.companyName
Intel Corp








