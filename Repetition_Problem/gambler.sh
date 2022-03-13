#!/bin/bash 

won=1
numberOfbets=0
numberOfwins=0
numberOflosses=0
money_have=100
money_should_earn=200
each_bet=20
money_for_winner=20

while [[  $money_have -ge $each_bet &&  $money_have -lt  $money_should_earn ]]
do
  ((numberOfbets++))
   result=$((RANDOM%2))

   if  [ $result -eq $won ]
   then
        money_have=$(($money_have+$each_bet))
        ((numberOfwins++))
   else
       money_have=$(($money_have-$each_bet))
       ((numberOflosses--))

   fi

    if [ $money_have -eq 0 ]
     then
         echo "player broke"
    else
          echo "player won"

    fi
done
