# dictionary sort
def sort words
  sorting_words words, []
end

def sorting_words words, sorted_words
  if words.length == 0
    return sorted_words 
  end
  
  minimum_word_index = 0
  words.each_with_index do |word,index|
    if word.downcase < words[minimum_word_index].downcase
      minimum_word_index = index
    end
  end

  sorted_words.push(words.slice!(minimum_word_index))
  sorting_words words,sorted_words
end

puts "Enter any words as you want and i will sort it for you: "
phrase = gets
words = []
while phrase != "\n"
  phrase.chomp!
  words.push(phrase)
  phrase = gets
end

puts "---------------------------"
puts sort words
puts "---------------------------"