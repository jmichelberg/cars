#! /bin/bash
# cars.sh
# Josh Michelberg

while true
do
	echo -e "1. Add a car to the list."
	echo -e "2. List all cars."
	echo -e "3. Quit the program."
	echo -e "Please enter a number."
	read command
	case "$command" in
		"1") echo "Add a car to the list."
			echo "What year was the car made?"
			read year
			echo "What is the make of the car?"
			read make
			echo "What is the model of the car?"
			read model
			echo $year:$make:$model >> My_old_cars
;;
		"2") echo "List all cars."
			sort My_old_cars | tr ':' ' '
;;
		"3") echo "Goodbye."
			break
;;
		*) echo "Invalid input. Enter a number 1-3."
esac
done 
