##Hello World

## Author: swcarpentry.github
## Title: Creating Functions
## Date: May 2020

#All Software Carpentry, Data Carpentry, and Library Carpentry instructional 
# material is made available under the Creative Commons Attribution license.

#*********************************
##Libraries
#********************************* 
# none to date 2020.05.27


#*********************************
## Table of Contents
#********************************* 

# 1. Questions and Objectives
# 2. Defining a Function
# 3. Composing Functions
# 4. Nesting Functions
# 5. Creating Functions

# X. place Hodor




#*********************************
# 1. Questions and Objectives
#********************************* 
# Questions
# 1. How do I make a function?
# 2. How can I test my functions?
# 3. How should I document my code?
# Objectives
# 1. Define a function that takes arguments.
# 2. Return a value from a function.
# 3. Test a function.
# 4. Set default values for function arguments.
# 5. Explain why we should divide programs into small, single-purpose functions.



#*********************************
# 2. Defining a Function
#*********************************
# defining a function
# fahrenheit to celsius

fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

## Function Box Breakdown ## - - - - - - - - - - - | - - - - - - | 
# (element)................ (Result)...............| Syntax tool |
# OUTPUT...................  fahrenheit_to_celsius | <-          |
# ARGUMENT name............  temp_F                | (inside)    |
# BODY (statements)........  temp_C <-(temp_F...)..| {inside}    |


#We define fahrenheit_to_celsius by assigning it to the output of function
# The list of argument names are contained within parentheses. 
# body of the function–the statements
#                     executed when it runs–is contained 
#                     within curly braces ({}).

# When we call the function, 
#       the values we pass to it are assigned to those variables 
#       so that we can use them inside the function. Inside the function, 
#       we use a return statement to send a result back to whoever asked for it.


fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

fahrenheit_to_celsius(32)



#*********************************
# 3. Composing Functions
#*********************************
# Now that we’ve seen how to turn 
# Fahrenheit into Celsius, 
# it’s easy to turn Celsius into Kelvin:


celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}

# freezing point of water in Kelvin
celsius_to_kelvin(0)

fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}

# freezing point of water in Kelvin
fahrenheit_to_kelvin(32.0)




#*********************************
# 4. Nesting Functions
#*********************************

# get code into one line! functions inside functions
## Called nesting

# Example:
# freezing point of water in Fahrenheit

celsius_to_kelvin(fahrenheit_to_celsius(32.0))


#*********************************
# 5. Creating Functions
#*********************************

# Usual method of combining elements --the concatenate function, c()
# Example: 
x <- c("A", "B", "C") 
# creates a vector x with three elements. 
# can extend that vector again using c, e.g. 
y <- c(x, "D") 
# creates a vector y with four elements. 
  
# Exercise Direction
# Write a function called highlight
# takes two vectors as arguments, 
#         called content and wrapper,
#     returns a new vector that has the wrapper vector at the beginning and end of the content:

best_practice <- c("Write", "theprograms", "for", "youpeople", "not", "computers")
asterisk <- "***"  # why three ??? R interprets a variable with a single value 
#                                   as a vector with one element.
highlight(best_practice, asterisk)

highlight <- function(best_practice, asterisk) {
  best_practice <- c("Write", "theprograms", "for", "youpeople", "not", "computers")
  asterisk <- "***"
  return(highlight)
}

highlight




#**************E*N*D*************# 
#*********************************
## END OF SCRIPT | END OF DOCUMENT 
#*********************************

#________$$$$..
#______$$$$$$$$$
#  ______$$$$$$$_$
#  _____$$$$$$$$$$
#  ______$$$$$$$$$$
#  _____$$$$$$_$$$$$
#  ____$$$$$$$_____$$$
#  ____$$$$$$$$_____$
#  ____$$$$$$$$$$
#  _____$$$$$$$$$$
#  _____$$$$$$$$$$$
#  ______$$$$$$$$$$$
#  _$$$$___$$$$$$$$$
#  __$$$$$$$$$$$$$$$
#  _$$$$$$$$$$$$$$$
#  __$$$$$$$$$$$$$
#  $$$$$$$$$$$$$
#  __$__$$$$$$
#  ____$$$$$$
#  ____$$$$$
#  ___$$$$$$_____$
#  ___$$$$$$___$$_$$
#  ____$$$$$___$__$$
#  ____$$$$$______$$
#  _____$$$$$____$$$
#  _______$$$$$$$$$
#  __________$$$$


