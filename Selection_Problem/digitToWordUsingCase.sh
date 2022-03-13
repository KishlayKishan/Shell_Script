#!/bin/bash -x

isFirstNumber=0
isSecondNumber=1
isThirdNumber=2
isForthNumber=3
isFifthNumber=4
isSixthNumber=5
isSeventhNumber=6
isEighthNumber=7
isNinthNumber=8
isTenthNumber=9
randomSingleDigitNumber=$((RANDOM%9))

case $randomSingleDigitNumber  in

        $isFirstNumber) echo "ZERO"
        ;;

        $isSecondNumber) echo "FIRST"
        ;;

		  $isThirdNumber) echo "SECOND"
        ;;

		  $isForthNumber) echo "THIRD"
        ;;

		  $isFifthNumber) echo "FOURTH"
        ;;

		  $isSixthNumber) echo "FIFTH"
        ;;

		  $isSeventhNumber) echo "SIXTH"
        ;;

		  $isEighthNumber) echo "SEVENTH"
        ;;

	     $isNinthNumber) echo "EIGHTH"
        ;;

		  $isTenthNumber) echo "NINTH"
        ;;




      *)  echo "NOT A SINGLE DIGIT NUMBER"
        ;;

esac
