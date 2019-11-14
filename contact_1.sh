#!/bin/bash


echo "Enter a name to search for."
read name
echo ""

while [[ $name != "stop" ]]
do

grep -i "$name" <<-HERE
Brent
Angel
Brice
Sam
Mark
Steven
Alex
Caity
Izaiah
Pamela
Terry 
HERE




   echo "Enter another name or type '"stop"' to exit."
   echo ""  
 read name
done
