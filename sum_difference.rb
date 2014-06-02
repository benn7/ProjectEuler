#Sum square difference - projecteuler.net/problem=6
def sum_difference

	sum_of_square = (1..100).inject(0) { |sum,num| sum += (num*num)}
	
	square_of_sum = (1..100).inject(0) { |sum, num| sum += num }

	square_of_sum * square_of_sum - sum_of_square
end