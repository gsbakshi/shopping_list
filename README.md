## Simple E-Commerce CLI Application

Build a command line tool for a simple e-commerce application.

### Usage

```
dart bin/main.dart
```

It should then proceed to give a list of prompts and their acceptable commands.

```
List of commands : 

(v) view items 
(a) add items 
(c) checkout 
(q) to exit 
```
The user will then proceed to enter the command specifying their selection.

> If the input is invalid, the user will recieve a prompt indicating so.

`The user can use the q command to pre-emptively quit the application`

### Sample Output

```
==========================     Shopping List     ==========================


List of commands : 

(v) view items 
(a) add items 
(c) checkout 
(q) to exit 

What do you want to do?: w
Invalid input 


List of commands : 

(v) view items 
(a) add items 
(c) checkout 
(q) to exit 

What do you want to do?: v

------
Cart is empty
------


List of commands : 

(v) view items 
(a) add items 
(c) checkout 
(q) to exit 

What do you want to do?: a

Available products:

(a) apples: $1.6
(b) bananas: $0.7
(c) courgettes: $1.0
(g) grapes: $2.0
(m) mushrooms: $0.8
(p) potatoes: $1.5

Your choice: p

------
1 x potatoes: $1.5
Total: $1.5
------


List of commands : 

(v) view items 
(a) add items 
(c) checkout 
(q) to exit 

What do you want to do?: c
Total: $1.5
Payment in cash: 2
Change :  $0.50

###########    Checking Out...    ###########
```
