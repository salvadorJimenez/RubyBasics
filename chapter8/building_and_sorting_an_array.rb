# building and sorting an array
print "Plese enter any words as you want, so when you press enter on an empty"
puts " line i order you alphabeticaly: "
phrase = gets
words = []

while phrase != "\n"
  phrase.chomp
  words.push(phrase)
  phrase = gets
end

unless words.length == 0
  words.sort!
  puts "-------------------"
  words.each do |word|
    puts word
  end
  puts "-------------------"
  puts "The words above was ordered alphabeticaly"
else
  puts "You don\'t write nothing" 
end