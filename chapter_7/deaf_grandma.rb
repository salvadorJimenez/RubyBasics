#Deaf grandma
puts "Deaf Grandma"
puts ""
print "Tell something to your grandma to exit type \"BYE\", be sure to speak"
puts " in uppercase."
puts "Come on don\'t be shy: '"
phrase = gets.chomp
while phrase != "BYE"
  if phrase == phrase.upcase
    puts "NO, NOT SINCE #{rand(20) + 1930} "
  else
    puts "HUH?!SPEAK UP, SONNY!"
  end
  phrase = gets.chomp
end

