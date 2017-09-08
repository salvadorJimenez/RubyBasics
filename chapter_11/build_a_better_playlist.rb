# build a better playlist
def shuffle words
  unsorted_array = []
  while words.length > 0
    random_index = rand(words.length)
    unsorted_array.push(words.slice!(random_index))
  end
  unsorted_array
end

def music_shuffle playlist
  playlist.sort!
  next_value = ""
  shuffled_array_final = []
  playlist.each do |song|
    splitted_song = song.split '/'
    next if next_value == splitted_song[5]
    folder_dir = Dir["/home/sjimenez/Downloads/Cage the Elephant/#{splitted_song[5]}/*.mp3"]
    shuffled_array = shuffle folder_dir
    shuffled_array.each {|val| shuffled_array_final.push(val)}
    next_value = splitted_song[5]
  end
  shuffled_array_final
end

def random_playlist
  Dir.chdir '/home/sjimenez/Workstation/micheladaProjects/homework/chapter_11'
  puts "-------------------------------------------"
  puts "Creating random playlist"
  puts "-------------------------------------------"
  folder_songs = '/home/sjimenez/Downloads/Cage the Elephant/**/*.mp3'
  songs_dir = Dir[folder_songs]
  songs_shuffle = music_shuffle songs_dir
  filename = "playlist.m3u"
  file_text = ""
  songs_shuffle.each {|song| file_text += song.to_s + "\n" }
  File.open filename, "w" do |f|
    f.write(file_text)
  end

  return "Playlist created"
end


puts random_playlist
