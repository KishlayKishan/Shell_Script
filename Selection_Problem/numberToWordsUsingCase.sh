#!/bin/bash

echo  "Enter a Number:"
read number

case $number in

    1)  echo  "UNIT"
    ;;

    10)
       echo  "TEN"
    ;;

    100)
       echo "HUNDRED"
    ;;

    1000)
      echo  "THOSAND"
    ;;

    10000)
      echo  "TEN THOUSAND"
    ;;

	 *)
		echo "Not Under Unit,Ten,Hundred,Thousand,Tenthousand"

esac
