# for {initialization} {condition} {increment} {
#     statement;
# }

for {puts "Start"; set i 0} {$i < 2} {incr i} {
    puts "i is $i"
}