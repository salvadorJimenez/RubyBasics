# ninety-nine bottles of beer on the wall

def bottles number_of_bottles
  bottles_on_the_wall = print_bottles number_of_bottles,""
  bottles_on_the_wall += "No more bottles of beer on the wall, no more bottles of beer.\n"
  bottles_on_the_wall += "Go to the store and buy some more, #{number_of_bottles} bottles of beer on the wall.\n"
  bottles_on_the_wall
end

def print_bottles number_of_bottles,bottles_on_the_wall
  if number_of_bottles == 1
    bottles_on_the_wall += "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer\n"
    bottles_on_the_wall += "Take one down and pass it around, no more bottles of beer on the wall\n"
    
    return bottles_on_the_wall
  end 

  bottles_on_the_wall += "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer\n"
  number_of_bottles -= 1
  bottles_on_the_wall += "Take one down and pass it around, #{number_of_bottles} bottles of beer on the wall\n"

  print_bottles number_of_bottles,bottles_on_the_wall
end

puts bottles 10