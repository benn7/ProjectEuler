def counting_sundays(year_start = 1900, year_end = 2000)

	months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

	i = 1
	sundays = 0

	(year_start..year_end).each do |year|

		if (year % 4 == 0 || year % 400 == 0) && year != 1900 
			months[1] += 1

		else
			months[1] = 28
		end

		months.each do |month|

			(1..month).each do |day|

				today = days[i]
				
				if (today == 'Sunday' && day == 1) && year >= 1901
					sundays += 1
				end

				if i == 6 && day <= month
					i = 0

				else
					i += 1
				end
			end
		end
	end
	sundays
end