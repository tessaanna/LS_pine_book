puts "Question 12.2"

right_now = Time.new
my_bday = Time.local(1979,10,21)
seconds_diff = right_now - my_bday

# 1000000000 = my_bday + x

billion = my_bday + 1000000000

puts right_now
puts my_bday
puts billion

puts ""
puts "Question 12.2 second bullet"

erics_bday = Time.local(1973, 6, 11)
minute = 60
hour = minute * 60
day = hour * 24
year = day * 365

eric_age = right_now - erics_bday

eric_age_years = eric_age/year

puts eric_age_years