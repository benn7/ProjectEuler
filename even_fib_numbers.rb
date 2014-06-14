# Even Fibonacci Numbers - projecteuler.net/problem=2
def fib_even(n = 33, r1 = 1, r2 = 1, result = 0)

  if n == 0
    result

  elsif r1 % 2 == 0
      result += r1
  end
  
    fib_even(n-1, r1+r2, r1, result)
  end

end