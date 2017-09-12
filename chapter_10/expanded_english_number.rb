def hundreds number
  num_string = ""
  left = number
  write = left / 100
  left = left - (write * 100)
  if write > 0
    if write == 1
      num_string += "one-hundred "
    elsif write == 2
      num_string += "two-hundred "
    elsif write == 3
      num_string += "three-hundred "
    elsif write == 4
      num_string += "four-hundred "
    elsif write == 5
      num_string += "five-hundred "
    elsif write == 6
      num_string += "six-hundred "
    elsif write == 7
      num_string += "seven-hundred "
    elsif write == 8
      num_string += "eight-hundred "
    elsif write == 9
      num_string += "nine-hundred "
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if write == 1 # Uh-oh...
      if left == 0
        num_string = num_string + 'ten '
      elsif left == 1
        num_string = num_string + 'eleven '
      elsif left == 2
        num_string = num_string + 'twelve '
      elsif left == 3
        num_string = num_string + 'thirteen '
      elsif left == 4
        num_string = num_string + 'fourteen '
      elsif left == 5
        num_string = num_string + 'fifteen '
      elsif left == 6
        num_string = num_string + 'sixteen '
      elsif left == 7
        num_string = num_string + 'seventeen '
      elsif left == 8
        num_string = num_string + 'eighteen '
      elsif left == 9
        num_string = num_string + 'nineteen '
      end
      left = 0
    elsif write == 2
      num_string = num_string + 'twenty' 
    elsif write == 3
      num_string = num_string + 'thirty' 
    elsif write == 4
      num_string = num_string + 'forty' 
    elsif write == 5
      num_string = num_string + 'fifty' 
    elsif write == 6
      num_string = num_string + 'sixty' 
    elsif write == 7
      num_string = num_string + 'seventy' 
    elsif write == 8
      num_string = num_string + 'eighty' 
    elsif write == 9
      num_string = num_string + 'ninety' 
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  if write > 0
    if write == 1
      num_string = num_string + 'one '
    elsif write == 2
      num_string = num_string + 'two '
    elsif write == 3
      num_string = num_string + 'three '
    elsif write == 4
      num_string = num_string + 'four '
    elsif write == 5
      num_string = num_string + 'five '
    elsif write == 6
      num_string = num_string + 'six '
    elsif write == 7
      num_string = num_string + 'seven '
    elsif write == 8
      num_string = num_string + 'eight '
    elsif write == 9
      num_string = num_string + 'nine '
    end 
  end
  num_string
end


def english_number number
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 1_000_000
    return 'Please enter a number 1 000 000 or less.' 
  end
  num_string = ''
  left = number
  write = left/1_000_000
  left = left - write*1_000_000
  if write > 0
    return 'one million'
  end
  write = left/1000
  left = left - write * 1000
  if write > 0
    num_string += hundreds write
    num_string += "thousand "
  end
  if left > 0
    num_string += hundreds left
  end
  num_string
end

puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(1000)
puts english_number(10000)
puts english_number(100000)
puts english_number(1000000)
puts english_number(987738)
puts english_number(100)