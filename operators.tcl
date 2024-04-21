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
puts "Enter a value: "
gets stdin someVar           ;# Get input from standard input (keyboard) and store in $someVar
puts "You entered: $someVar."
# puts [ expr $someVar == 1 ]  ;# Throws error
puts [expr {$someVar == 1} ] ;# Exit without errors

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
puts "  A && B   = [expr {$variableA && $variableB}]"   ;# A && B     = TRUE
# Logical OR. Produces a 0 result if both operands are zero, 1 otherwise. Valid for numeric operands only (integers or floating-point).
puts "  A || B   = [expr {$variableA || $variableB}]"   ;# A || B     = TRUE
# Logical NOT. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.
puts "!(A && B)  = [expr !($variableA &&  $variableB)]" ;# !(A && B)  = FALSE

# Note that the octal and hexadecimal conversion takes place differently in the expr command than in the Tcl substitution phase.
# In the substitution phase, a \x32 would be converted to an ascii "2", while expr would convert 0x32 to a decimal 50.







