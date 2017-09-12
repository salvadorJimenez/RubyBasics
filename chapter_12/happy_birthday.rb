# happy birthday

def spank day,month,year
  birthday = Time.local(year,month,day)
  current_date = Time.new
  seconds_in_a_year = (3600 * 24) * 365.25
  cont = 0
  while true
    cont += 1
    birthday += seconds_in_a_year
    if birthday < current_date 
      puts "SPANK!!#{cont}" 
    else 
      break
    end 
  end
end

p "What is your birthday?"
print "Day: "
day_of_birth = gets.chomp.to_i
print "Month: "
month_of_birth = gets.chomp.to_i
print "Year: "
year_of_birth = gets.chomp.to_i

puts spank day_of_birth,month_of_birth,year_of_birth