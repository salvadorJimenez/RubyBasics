puts "How many hours are in a year?"
hours_in_year=24*365
puts ">>> There are #{hours_in_year} hours"
puts "How many minutes are in a decade?"
minutes_in_decade=((24*365)*10)*60
puts ">>> There are #{minutes_in_decade} minutes"
print "How old are you? "
age=gets.chomp.to_i
seconds_in_life=((24*365)*3600)*age
puts "You has lived #{seconds_in_life} seconds"