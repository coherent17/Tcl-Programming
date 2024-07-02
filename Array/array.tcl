# Array
# set ArrayName(index) value
set char(0) A
set char(1) B
set char(2) C

puts $char(0)
puts $char(1)
puts $char(2)

# Get size of the array
set sz [array size char]
puts "size of char : $sz"

# Iterate through array
for {set index 0} {$index < [array size char]} {incr index} {
    puts "char($index) : $char($index)"
}