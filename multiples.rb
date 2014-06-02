# Multiples of 3 and 5 - projecteuler.net/problem=1
def multiples(n=999, result = 0)

  if n == 0 
    result
  
  elsif n % 3 == 0 || n % 5 == 0
    result += n
    multiples(n-1, result)

  else
    multiples(n-1, result)
  end

end
