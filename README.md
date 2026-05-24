# Shell Fundamentals To-Do App

A simple Bash-based To-Do application built for learning shell scripting fundamentals and basic task automation in Linux.

---

## Features

- View tasks
- Add tasks
- Delete tasks
- Exit program

---

## How to Run

Run the script using the following commands:

```bash
chmod +x todo.sh
./todo.sh
```
---

## Screenshots

### Main
This is the view of the main menu
![Main Menu](images/menu.png)
---

### View
This screenshot shows the number of task that is in the file by pressing 1. A total number of four tasks are in the file and they are numbered with the use of "nl".
![View Tasks](images/view.png)
---

### Add
Upon every successful addition to the file task, a message displays "task added". this is done by pressing 2 from the main menu, then "read -p" was used to prompt the user and "echo" was used to write and append the prompt to the file.
![Add Task](images/add.png)
---

### Delete
To delete a task, you have to enter the number of the task which is being displayed with the help of "nl(number line)" and the deleting was done with "sed -i"
![Delete Task](images/delete.png)
---

### Exit
When you press 4, the loop end and the app exit
![Exit Program](images/exit.png)
