#Deaf grandma
puts "Deaf Grandma"
puts ""
print "Tell something to your grandma to exit type \"BYE\", be sure to speak"
puts " in uppercase."
puts "Come on don\'t be shy: '"
phrase = gets.chomp
while phrase != "BYE BYE BYE"
  if phrase != phrase.upcase || phrase == "BYE"
    puts "HUH?!SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{rand(20) + 1930}"
  end
  phrase = gets.chomp
end

