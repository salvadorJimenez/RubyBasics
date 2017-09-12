# one billion seconds
def one_billion_seconds day,month,year,hour,minute,seconds
  birth_day = Time.local(year,month,day,hour,minute,seconds)
  birth_day += 1_000_000  
end

p "What is your birthday?"
print "Day: "
day_of_birth = gets.chomp.to_i
print "Month: "
month_of_birth = gets.chomp.to_i
print "Year: "
year_of_birth = gets.chomp.to_i
p "Time of birth ?"
print "Hour: "
hour_of_birth = gets.chomp.to_i
print "Minute: "
minute_of_birth = gets.chomp.to_i
print "Seconds: "
seconds_of_birth = gets.chomp.to_is

puts "You turn 1 000 000 seconds in #{one_billion_seconds day_of_birth,
                                                          month_of_birth,
                                                          year_of_birth,
                                                          hour_of_birth,
                                                          minute_of_birth,
                                                          seconds_of_birth}"