#!/bin/bash
echo "Enter 1.Addition 2.Subtraction 3.Multiplication 4.Division"
read action

case $action in

1) echo "You want to Add numbers. Give two numbers as input"
	echo -n "Enter First Number:"; read num1
	echo -n "Enter Second Number:"; read num2
	result=$((num1 + num2))
	echo "The added value is: $result" ;;
2) echo "You want to Subtract numbers. Give two numbers as input"
	echo -n "Enter First Number:"; read num1
        echo -n "Enter Second Number:"; read num2
	result=$((num1 - num2))
	echo "The subtracted value is: $result" ;;
3) echo "You want to Multiply numbers. Give two numbers as input"
	echo -n "Enter First Number:"; read num1
        echo -n "Enter Second Number:"; read num2
	result=$((num1 * num2))
	echo "The multiplied value is $result" ;;
4) echo "You want to Divide numbers. Give two numbers as input"
	echo -n "Enter First Number:"; read num1
        echo -n "Enter Second Number:"; read num2
	result=$((num1 / num2))
	echo "The divided value is: $result" ;;
*)
echo "You must choose 1 or 2 or 3 or 4" ;;

esac


