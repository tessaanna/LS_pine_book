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


puts ""
puts "Question 12.6 first bullet"
puts "Give me a roman numeral"
numeral = gets.chomp

numeral = numeral.to_s.upcase
numeral_array = numeral.split('')

numeral_array.each  do |x|
  if x == 'I' || x == 'V' || x == 'X' || x == 'L' || x == 'C' || x == 'D' || x == 'M'
    print '.'
  else
    puts "please only use roman numerals: IVXLCDM"
    break
  end
end

puts ""
puts "Question 12.6 second bullet"

birthdays_hash = {}
birthdays = File.read('chptr_12_2.txt')
birthdays.each_line do |x|
  name_bday = x.split(', ')
  names = name_bday[0]
  bday_month_combined = name_bday[1].split(' ')
  bday_month = bday_month_combined[0].to_s
  bday_day = bday_month_combined[1].to_s
  bday_year = name_bday[2]
  official_bday = Time.local(bday_year, bday_month, bday_day)
  birthdays_hash[names] = official_bday
end

puts birthdays_hash

















