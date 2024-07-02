# Procudure definition
proc welcomeProc {} {
    puts "Hello World"
}

# Calling the function
welcomeProc


# Funciton with arguments
proc sum {a b} {
    return [expr $a + $b]
}

puts [sum 10 30]