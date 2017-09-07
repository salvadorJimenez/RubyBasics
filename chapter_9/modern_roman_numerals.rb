#old school roman numerals
def roman_numeral number
  roman_number = ""
  m_conversion = number / 1000
  roman_number += "M" * (m_conversion)
  number -= m_conversion * 1000
  if number >= 900
    roman_number += "CM"
    number -= 900
  elsif number >= 500
    roman_number += "D"
    number -= 500
  elsif number >= 400
    roman_number += "CD"
    number -= 400
  else
    c_conversion = number / 100
    roman_number += "C" * (c_conversion)
    number -= c_conversion * 100
  end
  
  if number >= 90
    roman_number += "XC"
    number -= 90
  elsif number >= 50
    roman_number += "L"
    number -= 50
  elsif number >= 40
    roman_number += "XL"
    number -= 40
  else
    x_conversion = number / 10
    roman_number += "X" * (x_conversion)
    number -= x_conversion * 10
  end
  
  if number == 9
    roman_number += "IX"
    number -= 9
  elsif number >= 5
    roman_number += "V"
    number -= 5
  elsif number >= 4
    roman_number += "IV"
    number-= 4
  end

  i_conversion = number / 1
  roman_number += "I" * (i_conversion)
  number -= i_conversion * 1
  
  return roman_number
end

while true
  print "Enter a number between 1 and 3000: "
  number = gets.chomp.to_i
  if number >= 1 && number <= 3000
    puts roman_numeral number
    break
  end
end