print "What is your name? "
name=gets.chomp
print "What is your middle name? "
middle=gets.chomp
print "What is your last name? "
last=gets.chomp
puts "#{name} #{middle} #{last} is a great name"
puts "----------------------------------"
print "Please enter your favorite number: "
number=gets.chomp.to_i
puts "I think that #{number + 1} is a better number"