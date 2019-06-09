#!/bin/bash

function1() {

                df -h
                ifconfig -a
}


echo  "this is my 1st script"

read -p " enter the value of A: " var1

read -p " enter the option [Y/N] " choicevalue

if [ $var1 = 5 ]; then
        echo " the input value is $var1 "

else
        echo " the value type is not equal to 5: $var1 "
       
fi

if [ $choicevalue = "Y"  -o  $choicevalue = "y" ] ; then
                function1
         else
                echo " your choice is 'NO' "
              
fi
