# The name of variables can contain any characters and length. 
# You can even have white spaces by enclosing the variable in curly braces, but it is not preferred.
puts "\nNaming Variables"
set variableA 10                    ;# This is a variable
set {variable B} test               ;# This is a variable containing whitespace
puts $variableA                     ;# To get variable value use '$'
puts ${variable B}

# Tcl is a dynamically typed language. 
# The value of the variable can be dynamically converted to the required type when required.
puts "\nData-type conversion"
set variableA "10"                  ;# The primitive data-type of Tcl is string.
puts $variableA             
set sum [expr $variableA + 20]      ;# Here variableA is converted to a number when performing an arithmetic operation
puts $sum

# As seen above 'expr' is used to perform mathematical operations
# The default precision of Tcl is 0, meaning the fewest digits necessary to distinguish 
# a floating point number from its nearest neighbours. 
# In order to get floating point results, we should add at least a single decimal digit.
puts "\nFloating Numbers - Unspecified"
set variableA "10"
set variableB "2"
puts [expr $variableA + $variableB] ;# Result returns a Whole/Natural (int) number
puts [expr $variableA / 9]          ;# Returns a Whole/Natural (int) number
puts [expr $variableA / 9.0];       ;# Returns a Rational (float) number

puts "\nFloating Numbers - Specified"
set variableA "10.0"                ;# Now we specify that we want a floating number when converting data-type
puts [expr $variableA + $variableB] ;# Returns the sum with a single decimal digit
puts [expr $variableA / 9];         ;# Now this division will return a Rational (float) number

# This can be changed by changing the tcl_precision, setting it as 17 "perfect" for IEEE floating-point
puts "\nTcl Precision"
puts [expr 1.4]                     ;# Returns the nearest neighbours, or rounded value
set tcl_precision 17                ;# Change precision to 17 decimal digits 
puts [expr 1.4]                     ;# Returns 1.3999999999999999
