# leap years
print "Please enter a starting year: "
starting_year = gets.chomp.to_i
print "Enter an ending year: "
ending_year = gets.chomp.to_i
if starting_year > ending_year
  starting_year , ending_year = ending_year , starting_year
end
(starting_year..ending_year).each do |year|
  if year % 4 == 0
    if year % 100 == 0
      if year  % 400 == 0
        puts year
      end
    else
      puts year
    end
  else
    if year % 100 == 0
      if year  % 400 == 0
        puts year
      end
    end
  end
end 

puts "All the numbers above are leap years :)"