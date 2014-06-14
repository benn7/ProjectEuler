#Special Pythagorean triplet - projecteuler.net/problem=9

sum = 1000

def special_tripet?(a, b, sum)
	
	c = sum - a - b
	puts "a=#{a} b=#{b} c=#{c} product=#{a*b*c}" if c > 0 && (a*a + b*b == c*c)

end

1.upto(sum / 3) { |a| a+1.upto(sum / 2){ |b| special_triplet?(a,b,sum) } }
