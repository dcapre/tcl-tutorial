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

puts "Line
\ Continuation" ;# Continues line

puts "Special characters \u005c" ;# Continues line

# List of some known String Representations
# ------------------------------------------------
# \u0009    \t   TAB
# \u000A    \n   NEWLINE
# \u000B    \v   VERTICAL TAB
# \u000C    \f   FORM FEED
# \u000D    \r   CARRIAGE RETURN
# \u0020         SPACE
# \u005c    \    BACKSLASH
# \u007b    {    OPEN BRACE
# \u007d    }    CLOSE BRACE
# \u0022    "    QUOTE
# \u003b    ;    SEMICOLON
# \u0024    $    DOLLAR
# \u005b    [    OPEN BRACKET
# \u005d    ]    CLOSE BRACKET
# \u005c    \    BACKSLASH
# \u0023    #    HASH