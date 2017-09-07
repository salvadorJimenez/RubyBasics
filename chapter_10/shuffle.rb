#shuffle
def shuffle words
  unsorted_array = []
  while words.length > 0
    random_index = rand(words.length)
    unsorted_array.push(words.slice!(random_index))
  end
  unsorted_array
end

puts "Enter any words as you want and i will shuffle for you: "
phrase = gets
words = []
while phrase != "\n"
  phrase.chomp!
  words.push(phrase)
  phrase = gets
end

puts "---------------------------"
puts shuffle words
puts "---------------------------"