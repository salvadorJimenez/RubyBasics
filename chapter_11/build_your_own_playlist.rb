# build your own playlist
def shuffle words
  unsorted_array = []
  while words.length > 0
    random_index = rand(words.length)
    unsorted_array.push(words.slice!(random_index))
  end
  unsorted_array
end

def random_playlist
  Dir.chdir '/home/sjimenez/Workstation/micheladaProjects/homework/chapter_11'
  folder_songs = '/home/sjimenez/Downloads/Cage the Elephant/2013/*.mp3'
  songs_dir = Dir[folder_songs]
  puts "-------------------------------------------"
  puts "Creating random playlist of #{folder_songs}"
  puts "-------------------------------------------"
  songs_shuffle = shuffle songs_dir
  filename = "playlist.m3u"
  file_text = ""
  songs_shuffle.each {|song| file_text += song.to_s + "\n" }
  File.open filename, "w" do |f|
    f.write(file_text)
  end

  return "Playlist created"
end


puts random_playlist

