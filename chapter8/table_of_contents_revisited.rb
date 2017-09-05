# table of contents, revisited
puts "Please enter the number of chapters that whant to print: "
number_chapters = gets.chomp.to_i
names = []
pages = []
number_chapters.times do |value| 
  print "Chapter #{value + 1}: "
  name = gets.chomp
  names.push("Chapter #{value + 1}: #{name}")
  print "page: "
  page = gets.chomp
  pages.push("page #{page}")
end

line_width = 50
puts ("Table of content".center(line_width))
number_chapters.times do |index| 
  puts names[index].ljust(line_width/2) + pages[index].rjust(line_width/2)
end
