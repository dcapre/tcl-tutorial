# From the Tcl8.6.14/Tk8.6.14 Documentation
# "expr" is a Tcl command meaning Evaluate an expresion
# and it's accompained by an operator.
# 
# Tcl language has built-in opearators and provides the
# following ones:
# 
# -Aritmetic Operators 
# -Relational Operators
# -Logical Operators
# -Bitwise Operators
# -Ternary Operator

# WARNING: You should always use braces when evaluating expressions that may contain user input, to avoid possible security breaches.
# Performance tip: enclosing the arguments to expr in curly braces will result in faster code. So do expr {$i * 10} instead of simply expr $i * 10
# Output the results
# puts "Enter a value: "
# gets stdin someVar           ;# Get input from standard input (keyboard) and store in $someVar
# puts "You entered: $someVar."
# puts [ expr $someVar == 1 ]  ;# Throws error
# puts [expr {$someVar == 1} ] ;# Exit without errors

# Arithmetic Operators
puts "\nArithmetic Operators"
set variableA 10                 
set variableB 20

puts "A: $variableA"    ;# Print variables
puts "B: $variableB"

puts "A + B = [expr {$variableA + $variableB}]" ;# A + B = 30 
puts "A - B = [expr {$variableA - $variableB}]" ;# A - B = -10
puts "A * B = [expr {$variableA * $variableB}]" ;# A * B = 200
puts "A / B = [expr {$variableA / $variableB}]" ;# A / B = 0
puts "A % B = [expr {$variableA % $variableB}]" ;# A % B = 10

# Relational Operators
puts "\nRelational Operators"
puts "A: $variableA"    ;# Print variables
puts "B: $variableB"
puts "A == B = [expr {$variableA == $variableB}]" ;# A == B = FALSE
puts "A != B = [expr {$variableA != $variableB}]" ;# A != B = TRUE
puts "A > B  = [expr {$variableA >  $variableB}]" ;# A > B  = FALSE
puts "A < B  = [expr {$variableA <  $variableB}]" ;# A < B  = TRUE
puts "A >= B = [expr {$variableA >= $variableB}]" ;# A >= B = FALSE
puts "A <= B = [expr {$variableA <= $variableB}]" ;# A <= B = TRUE

# Logical Operators
puts "\nLogical Operators"
puts "A: $variableA"    ;# Print variables
puts "B: $variableB"
# Logical AND. Produces a 1 result if both operands are non-zero, 0 otherwise. Valid for numeric operands only (integers or floating-point).
puts "A && B     = [expr {$variableA && $variableB}]"   ;# A && B     = TRUE
# Logical OR. Produces a 0 result if both operands are zero, 1 otherwise. Valid for numeric operands only (integers or floating-point).
puts "A || B     = [expr {$variableA || $variableB}]"   ;# A || B     = TRUE
# Logical NOT. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.
puts "!(A && B)  = [expr !($variableA &&  $variableB)]" ;# !(A && B)  = FALSE

# Bitwise Operators
# Note that the octal and hexadecimal conversion takes place differently in the expr command than in the Tcl substitution phase.
# In the substitution phase, a \x32 would be converted to an ascii "2", while 0x32 expr would convert to a decimal 50.
# Use 0x for hexadecimal and 0b for binary number representation
puts "\nBitwise Operators"
set variableA 0b1100                             ;# Binary 1100              
set variableB 0x0003                             ;# Binary 0011
puts "A: $variableA"                             ;# Print variables
puts "B: $variableB"
puts "A & B  = [expr {$variableA & $variableB}]" ;# Binary AND 1100 & 0011 => 0000   (d0)
puts "   ^A  = [expr {$variableA | $variableB}]" ;# Binary OR  1100 & 0011 => 1111  (d15)
puts "B << 2 = [expr {$variableB << 2}]"         ;# Binary Shift Left  by 2 << 0011 => 1100 (d15)
puts "A >> 2 = [expr {$variableA >> 2}]"         ;# Binary Shift Right by 2 >> 1100 => 0011 (d3)

# Terniary Operators
puts "\nTerniary Operator"
set variableA 10         
puts "10 > 20 ? True : False"                    
puts [expr $variableA > 20 ? True : False]  ;# Evaluates the expresion and returns the 1st value if true, else the 2nd  
puts "10 < 20 ? True : False"
puts [expr $variableA < 20 ? True : False]  ;# 









