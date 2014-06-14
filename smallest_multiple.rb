# Smallest Multiple - projecteuler.net/problem=5

1.upto(300000000){|n| puts n if 1.upto(20).all? {|d| n % d == 0}}