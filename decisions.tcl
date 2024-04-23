# Tcl language provides following types of decision making statements:
# - if statement 
# - if...else statement
# - nested if statement
# - switch statement 
# - nested switch statement

puts "\nIf statement"
set a 10
 
#check the boolean condition using if statement
if { $a < 20 } {
   # if condition is true then print the following 
   puts "a is less than 20" 
}
puts "value of a is : $a" 


puts "\nIf...Else statement"
set a 100

#check the boolean condition
if { $a == 10 } {
   # if condition is true then print the following 
   puts "Value of a is 10"
} elseif { $a == 20 } {
   # if else if condition is true 
   puts "Value of a is 20"
} elseif { $a == 30 } {
   # if else if condition is true 
   puts "Value of a is 30"
} else {
   # if none of the conditions is true 
   puts "None of the values is matching"
}
puts "Exact value of a is: $a"


puts "\nNested If statement"
set a 100
set b 200
 
# check the boolean condition 
if { $a == 100 } {
   # if condition is true then check the following 
   if { $b == 200 } {
      #if condition is true then print the following 
      puts "Value of a is 100 and b is 200"
   }
}
puts "Exact value of a is : $a"
puts "Exact value of b is : $b"


puts "\nSwitch statement"
set grade C;

# Unquoted version 
switch $grade  A { puts "Well done!" }  B { puts "Excellent!" }  C { puts "You passed!"  } F { puts "Better try again"   }   default {     puts "Invalid grade"   }
puts "Your grade is  $grade\n"

set grade B;
# Quoted version 
switch $grade {
   A {
      puts "Well done!"
   }
   B {
      puts "Excellent!"
   }

   C {
      puts "You passed!"
   }
   F {
      puts "Better try again"
   }
   default {
      puts "Invalid grade"
   }
}
puts "Your grade is  $grade"


puts "\nNested Switch statement"
set a 100
set b 200

switch $a {
   100 {
      puts "This is part of outer switch"
      switch $b {
         200 {
            puts "This is part of inner switch!"
         }
      }
   }   
}
puts "Exact value of a is : $a"
puts "Exact value of a is : $b"

# Bonusw
# Terniary Operator
puts "\nTerniary ?: Operator"
set a 10;
set b [expr $a == 1 ? 20: 30]
puts "Value of b is $b"
set b [expr $a == 10 ? 20: 30]
puts "Value of b is $b" 