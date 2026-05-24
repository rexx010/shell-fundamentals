#!/bin/bash

todofile=~/todo.txt

while true

do
	echo "Todo Menu"
	echo "1. View all tasks"
	echo "2. Add a new task"
	echo "3. Delete a task"
	echo "4. Exit the program"
	echo ""

	read -p "enter a number of an operation you'd like to perform: " user_input
        echo ""
	
	if [ "$user_input" = "1" ]; then
		echo "View all tasks"

		if [ -f $todofile ]; then
			nl -w2 -s". " $todofile
			echo ""
		else
			echo "file task not found"
			echo ""
		fi

	elif [ "$user_input" = "2" ]; then
		echo "Add a new task"

		read -p "enter a new task to add: " task

		if [ -f $todofile ]; then
			echo "$task" >> $todofile
			echo "task added"
			echo ""
		else
			echo "task can't be added to a file"
			echo ""
		fi

	elif [ "$user_input" = "3" ]; then
		echo "Delete a task"
		
		if [ -f $todofile ]; then
			nl -w2 -s". " $todofile
			echo ""

			read -p "select a task number you want to delete: " task_to_del
			echo ""
			sed -i "${task_to_del}d" $todofile

			echo "task deleted"
			echo ""
		else
			echo "no tasks to delete"
			echo ""
		fi

	elif [ "$user_input" = "4" ]; then
		
		echo "Goodbye"
		exit

	else
		echo "invalid option"

	fi

	echo ""
done
