# Largest palindrome - projecteuler.net/problem=4

999.downto(900){|num1| num1.downto(900){|num2| palindrome?(num1+num2)}}

def palindrome?(total)	
	return total if total.to_s == total.to_s.reverse
end