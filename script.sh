#!/bin/sh

read a b c
count=0



if [ "$a" -le 0 ] || [ "$b" -le 0 ] || [ "$c" -le 0 ]; then
       echo "Сторона треугольника должна быть больше 0" >&2
	exit 2      

else
       if [ "$(($a + $b))" -gt "$c" ] && [ "$(($a + $c))" -gt "$b" ] && [ "$(($b + $c))" -gt "$a" ]; then
		if [ "$a" -eq "$b" ]; then 
			count=$(($count + 1))
		fi
		if [ "$a" -eq "$c" ]; then 
			count=$(($count + 1))
        	fi
		if [ "$b" -eq "$c" ]; then 
			count=$(($count + 1))
		fi
		if [ "$count" -eq 0 ]; then
			echo "Треугольник"
			exit 0
		fi
		if [ "$count" -eq 1 ]; then
			echo "Равнобедренный треугольник"
			exit 0
		fi
		if [ "$count" -gt 1 ]; then
			echo "Равносторонний треугольник"
			exit 0
		fi
	else
		echo "Не является треугольником" >&2
		exit 3 
	fi
fi

