set char(0) A
set char(1) B
set char(2) C

foreach index [array names char] {
    puts "char($index) : $char($index)"
}