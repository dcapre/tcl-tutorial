# In Tcl, the evaluation of a command is done in 2 phases. The first phase is a single pass of substitutions. 
# The second phase is the evaluation of the resulting command. Note that only one pass of substitutions is made. 

# Example
set variableA "Hi!"
puts $variableA ;# Here a first phase substitution happens, a proper variable is substituted for $varableA
                ;# puts $variableA ⇒ puts "Hi!"

#---------------------------
# Grouping with ""
#---------------------------
puts "\n#---------------------------"
puts "Grouping with \"\" "
puts "#---------------------------"
# Words within double quotes or braces are grouped into a single argument.
# Grouping words within double quotes allows substitutions to occur within the quotations - or, in fancier terms, "interpolation".
set varName 124
puts "The current stock value is $varName" ;# contents of varName are substituted for $varName, and then the entire string is printed to the output device

# In general, the backslash (\) disables substitution for the single character immediately following the backslash. 
# Any character immediately following the backslash will stand without substitution.
# However, there are specific "Backslash Sequence" strings which are replaced by specific values during the substitution phase. 
#The following backslash strings will be substituted as shown below.
# String	Output	                 Hex Value
# \a        Audible Bell             0x07
# \b        Backspace                0x08
# \f        Form Feed (clear screen) 0x0c
# \n        New Line                 0x0a
# \r        Carriage Return          0x0d
# \t        Tab                      0x09
# \v        Vertical Tab             0x0b
# \0dd	    Octal Value	d is a digit from 0-7
# \uHHHH	H is a hex digit 0-9,A-F,a-f. This represents a 16-bit Unicode character.
# \xHH....	Hex Value H is a hex digit 0-9,A-F,a-f. Note that the \x substitution "keeps going" as long as it has hex digits, 
#           and only uses the last two, meaning that \xaa and \xaaaa are equal, and that \xaaAnd anyway will "eat" the A of "And". 
#           Using the \u notation is probably a better idea.
set Z Albany
set Z_LABEL "The Capitol of New York is: "

puts "$Z_LABEL $Z"   ;# Prints the value of Z
puts "$Z_LABEL \$Z"  ;# Prints a literal $Z instead of the value of Z

puts "\nBen Franklin is on the \$100.00 bill"

set a 100.00
puts "Washington is not on the $a bill"    ;# This is not what you want
puts "Lincoln is not on the $$a bill"      ;# This is OK
puts "Hamilton is not on the \$a bill"     ;# This is not what you want
puts "Ben Franklin is on the \$$a bill"    ;# But, this is OK

puts "\n................. examples of escape strings"
puts "Tab\tTab\tTab"
puts "This string prints out \non two lines"
puts "This string comes out\
on a single line"

#---------------------------
# Grouping with {}
#---------------------------
puts "\n#---------------------------"
puts "Grouping with \{\} "
puts "#---------------------------"
# Words within double quotes or braces are grouped into a single argument.
# During the substitution phase of command evaluation, the two grouping operators,
# the brace ({) and the double quote ("), are treated differently by the Tcl interpreter.
# Grouping words within double braces disables substitution within the braces.
# Characters within braces are passed to a command exactly as written. 
# The only "Backslash Sequence" that is processed within braces is the backslash at the end of a line.
set Z Albany
set Z_LABEL "The Capitol of New York is: "

puts "\n................. examples of differences between  \" and \{"
puts "$Z_LABEL $Z"
puts {$Z_LABEL $Z}

puts "\n....... examples of differences in nesting \{ and \" "
puts "$Z_LABEL {$Z}"
puts {Who said, "What this country needs is a good $0.05 cigar!"?}

puts "\n................. examples of escape strings"
puts {There are no substitutions done within braces \n \r \x0a \f \v}
puts {But, the escaped newline at the end of a\
string is still evaluated as a space}

#---------------------------
# Grouping with []
#---------------------------
puts "\n#---------------------------"
puts "Grouping with \[\] "
puts "#---------------------------"
# A command within square brackets ([]) is replaced with the result of the execution of that command. 
# The exceptions are:
# A square bracket that is escaped with a \ is considered as a literal square bracket.
# A square bracket within braces is not modified during the substitution phase.
set x abc
puts "A simple substitution: $x\n"

set y [set x "def"]
puts "Remember that set returns the new value of the variable: X: $x Y: $y\n"

set z {[set x "This is a string within quotes within braces"]}
puts "Note the curly braces: $z\n"

set a "[set x {This is a string within braces within quotes}]"
puts "See how the set is executed: $a"
puts "\$x is: $x\n"

set b "\[set y {This is a string within braces within quotes}]"
# Note the \ escapes the bracket, and must be doubled to be a
# literal character in double quotes
puts "Note the \\ escapes the bracket:\n \$b is: $b"
puts "\$y is: $y"

# Conclusion:
#     Use "" when you want to allow variable substution
#     Use {} for string literals
#     Use [] when you want to use the returned data.