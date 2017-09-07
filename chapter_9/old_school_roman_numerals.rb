#old school roman numerals
def old_roman_numeral number
  roman_number = ""
  m_conversion = number / 1000
  roman_number += "M" * (m_conversion)
  number -= m_conversion * 1000
  d_conversion = number / 500
  roman_number += "D" * (d_conversion)
  number -= d_conversion * 500
  c_conversion = number / 100
  roman_number += "C" * (c_conversion)
  number -= c_conversion * 100
  l_conversion = number / 50
  roman_number += "L" * (l_conversion)
  number -= l_conversion * 50
  x_conversion = number / 10
  roman_number += "X" * (x_conversion)
  number -= x_conversion * 10
  v_conversion = number / 5
  roman_number += "V" * (v_conversion)
  number -= v_conversion * 5
  i_conversion = number / 1
  roman_number += "I" * (i_conversion)
  number -= i_conversion * 1
  return roman_number
end

while true
  print "Enter a number between 1 and 3000: "
  number = gets.chomp.to_i
  if number >= 1 && number <= 3000
    puts old_roman_numeral number
    break
  end
end