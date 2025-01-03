proc factorial {n} {
  if {$n < 0} {
    error "Factorial is not defined for negative numbers"
  } elseif {$n == 0} {
    return 1
  } else {
    return [expr {$n * [factorial [expr {$n - 1}]]}]
  }
}
puts [factorial 5]