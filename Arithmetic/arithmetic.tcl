# Expr Statement
# Syntax:
# Expr var1 operator var2
set a "5"
set b "3"
set c [expr "$a + $b"]
set d [expr "$a - $b"]
set e [expr "$a * $b"]
puts "addition of a and b is $c"; # 8
puts "substraction of a and b is $d"; # 2
puts "multiply of a and b is $e"; # 15

# Logical Operations
set A 1
set B 0
puts "[expr $A && $B]";  # 0
puts "[expr $A || $B]";  # 1
puts "[expr !($A && $B)]";  # 1

# Bitwise Operations
set A 60; # 0011 1100
set B 13; # 0000 1101
puts "[expr $A & $B]"; # 0000 1100 (12)
puts "[expr $A | $B]"; # 0011 1101 (61)
puts "[expr $A ^ $B]"; # 0011 0001 (49)
puts "[expr $A << 2]"; # 1111 0000 (240)
puts "[expr $A >> 2]"; # 0000 1111 (15)