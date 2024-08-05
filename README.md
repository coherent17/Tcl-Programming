# Tcl-Programming
Practice some simple syntax for tcl to write better script to enable eda tool

## Install
```bash=
$ sudo apt install tcl
```

# Function to build pretty table
proc build_pretty_table {headers rows} {
    # Find the maximum width of each column
    set colWidths {}
    foreach header $headers {
        lappend colWidths [string length $header]
    }
    foreach row $rows {
        foreach i $row {
            set colWidths [lreplace $colWidths 0 [expr {max([lindex $colWidths 0], [string length $i])}]]
        }
    }

    # Function to create a line with the given character
    proc create_line {colWidths char} {
        set line "+"
        foreach width $colWidths {
            append line [string repeat $char $width] "+"
        }
        return $line
    }

    # Create the top border
    set table [create_line $colWidths "-"]

    # Create the header row
    append table "\n|"
    foreach i $headers {
        append table " $i [string repeat " " [expr {[lindex $colWidths 0] - [string length $i]}]] |"
    }
    append table "\n"
    append table [create_line $colWidths "="]

    # Create the data rows
    foreach row $rows {
        append table "\n|"
        foreach i $row {
            append table " $i [string repeat " " [expr {[lindex $colWidths 0] - [string length $i]}]] |"
        }
        append table "\n"
        append table [create_line $colWidths "-"]
    }

    return $table
}

# Example usage
set headers {"Name" "Age" "City"}
set rows {{"Alice" "30" "New York"} {"Bob" "25" "Los Angeles"} {"Charlie" "35" "Chicago"}}

set table [build_pretty_table $headers $rows]
puts $table