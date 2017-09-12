# party like its roman to integer  #Not finished yet :c
def roman_to_integer roman_number
  dictionary = {
    "M" : 1000,
    "CM": 900,
    "D" : 500,
    "CD": 400,
    "C" : 100,
    "XC": 90,
    "L" : 50,
    "XL": 40,
    "X" : 10,
    "IX": 9,
    "V" : 5,
    "IV": 4,
    "I" : 1
  }
  numeric_value = 0
  dictionary.each do |key,val|
    if roman_number.include? key
      
    end
  end
end

print "Enter a roman number pls: "
roman_number = gets.chomp.upcase

puts roman_to_integer roman_number