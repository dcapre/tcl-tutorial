# Tcl command is actually a list of words, with the first word representing 
# the command to be executed. The next words represent the arguments. 
# In order to group the words into a single argument, we enclose multiple words with "" or {}.
# commandName argument1 argument2 ... argumentN

puts "Hello, world!" ;# puts is the Tcl command here

puts stdout "Hello, world!" ;# ‘stdout’ is argument1, and "Hello World" is argument2. 
                             # Here, stdout makes the program to print in the standard output device.

# In command substitutions, square brackets are used to evaluate the scripts inside the square brackets.
puts [expr 1 + 6 + 9]

# Now lets set variable 'a' as 3
set a 3
# And use variable substitution with '$' 
puts $a

# We can also add escape sequences 
puts "Hello\nWorld" ;# Creates a NewLine in between 