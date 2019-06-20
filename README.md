PROJECT DESCRIPTION
============================

   This project about program that will query https://macaddress.io ,returning with output MACaddress associated with which company and dockerize the below program that will take command line arguments.
   
Prerequisites
==========================
  1. Any Linux server(mine is ubuntu 18.04) with Docker installed.
  
  2. signup in https://macaddress.io and get the apikey to used in program to generate the output.


Usage
==========================

Step 1  clone this repo

git clone https://github.com/14sudharsan/MacAddress.git

Step 2 Enter valid mac address  macaddress-input.txt  to yield output of MACaddress associated with which company 
        

Step 3 Invoke the following command to execute wrapper script 


Here having wrapper script <setup-getmacid.sh> to automate the docker image building and running process.Now run the above script.

                             sh setup-getmacid.sh  

   when you run above command it will ask to prompt the apikey and give apikey value 
     
                           enter apikey: <your api key>

   After that it will ask about to prompt field name which you want search
   
                          enter Field name: <give the Field name which you want to search>                         

   

 If user found any difficult run the script when user type Help it will show READme.md file
    
                                        enter apikey: help
     




