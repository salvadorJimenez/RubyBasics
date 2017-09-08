# safer pricture downloading 
Dir.chdir '/home/sjimenez/Workstation/micheladaProjects/homework/chapter_11'
# First we find all of the pictures to be moved.
pic_names = Dir['/home/sjimenez/Pictures/Fotos_Prueba/**/*.png']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:
"
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar     ".
  new_name = if pic_number < 10
    if File.exist?("#{batch_name}0#{pic_number}.png")
      puts "#{batch_name}#{pic_number}.png already exist on the directory"
      exit
    else
      "#{batch_name}0#{pic_number}.png"
    end
  else
    if File.exist?("#{batch_name}#{pic_number}.png")
      puts "#{batch_name}#{pic_number}.png already exist on the directory"
      exit
    else
      "#{batch_name}#{pic_number}.png"
    end
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'