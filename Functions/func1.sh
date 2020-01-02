##!/usr/local/bin/bash -x

function getUserInput() {
	echo 
	echo Select:
	echo 1. Celsius to Fahrenheit
	echo 2. Fahrenheit to Celsius
	echo 3. Exit

	read option

	case $option in
		1) 
			read -p "Enter degree in Celsius:" degC 
			getDegF $degC
			getUserInput ;;
		2)
			read -p "Enter degree in Fahrenheit:" degF
			getDegC $degF
			getUserInput ;;
		3)
			exit ;;
		*)
			echo Select proper option -
			getUserInput ;;
	esac
}

function getDegF(){
	inputInCelsius=$1
	output=$(echo $inputInCelsius \* 9 / 5 + 32 | bc -l)
	echo $1 Celsius = $output Fahrenheit
}

function getDegC(){
   inputInFahrenheit=$1
	output=$(echo $(($inputInFahrenheit - 32)) \* 5 / 9 | bc -l)
   echo $1 Fahrenheit = $output Celsius
}

getUserInput 
