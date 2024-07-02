# Continous array
set arr(0) a
set arr(1) b
set arr(2) c
set arr(3) d
set arr(4) e

set element_to_find d

foreach number [array names arr] {
    if {$arr($number) == $element_to_find} {
        puts "found: $arr($number)"
    }
}

# Associative array
set students(jacob) 24
set students(ryan) 27
set students(callie) 27
set students(john) 29
set students(yang) 21

set name_to_find callie

foreach name [array names students] {
    if {$name == $name_to_find} {
        puts "Name: $name"
        puts "Age: $students($name)"
    }
}