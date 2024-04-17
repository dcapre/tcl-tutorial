# The primitive data-type of Tcl is string.
# These primitive data-types in turn create composite data-types
# for list and associative array. In Tcl, data-types can represent 
# not only the simple Tcl objects, but also can represent complex 
# objects such as handles, graphic objects (mostly widgets), and I/O channels.

# When you want to use a variable, you can directly assign a value to it,
# these can be transformed to one data-type to another when required.

# Simple Tcl Objects
set myVariable 18                   ;# Create variable
puts $myVariable                    ;# Print variable
puts [expr $myVariable + 6 + 9]     ;# Use variable in a expr command

# String Representations
set myVariable "hello world"        ;# 'set' works as an assigment 
puts $myVariable
set myVariable {hello world}        ;# We use ' "" ' or '{}' when working with multiple strings
puts $myVariable

# List
# List is nothing but a group of elements. 
set myVariable {red green blue}     ;# This is a list
puts [lindex $myVariable 2]         ;# Prints element on list index 2 (0..2)
set myVariable "red green blue"     ;# This is another list
puts [lindex $myVariable 1]         ;# Prints element on list index 1 (0..2)

# Associative Array
# Associative arrays have an index (key) that is not necessarily an integer. 
# It is generally a string that acts like key value pairs.
# set ArrayName(Index) value
set languages(0) Tcl
set languages(1) "C Language"
set languages(two) "C++"
puts $languages(0)
puts $languages(1)
puts $languages(two)

# Handles
# Tcl handles are commonly used to represent files and graphics objects. 
# These can include handles to network requests and also other channels
# like serial port communication, sockets, or I/O devices.
# open fileName accessMode
set myfile [open "filename" r]      ;# Here a file handle for "filename" is created to Access in Read mode
