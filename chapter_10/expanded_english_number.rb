# expanded english number    ####Unconpleted
def english_number number
  english_number_conversion number,"",1_000_000
end

def english_number_conversion number,name_number,factor_conersion
  if number == 0
    return name_number
  end

  units = %w[one two three four five six seven eight nine]
  decimals = %w[ten twenty thirty fourty fifty sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
end

print "Enter a number and i will return the name of that number: "
number = gets.chomp.to_i

puts english_number number