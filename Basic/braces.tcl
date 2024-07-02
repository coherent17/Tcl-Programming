set a "5"
set b $a

puts $a
puts $b

# Square Braces
# Used for assigning value to variables from other expressions
# Take statement inside square braces, evaluate it
# and assign output of it to the variable b
set b [set a "5"]

puts $a
puts $b

# Curly Braces
# Not interpolate the variable, just print it
set value 1.5
puts {the value is $value}; # the value is $value
puts "the value is $value"; # the value is 1.5