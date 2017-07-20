puts "Question - Safer picture downloading"
puts ""
Dir.chdir '/Users/teresadanna/Library/Mobile Documents/com~apple~CloudDocs/Documents/to/'
pic_names = Dir['/Users/teresadanna/Library/Mobile Documents/com~apple~CloudDocs/Documents/from/']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files"
pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts "done importing!"
puts "Not done with this one - need to understand what he did"

puts "Question - Build your own playlist"

filename = 'playlist.txt'
music_files = Dir['**/*.mp3' ]

File.open filename, 'w' do |f|
  music_files.each do |music|
    f.write music+"\n"
  end
end
puts File.read filename


puts ""
puts "Question - Build a better playlist"
music = ['hello kitty', 'Sarcastic world', 'leboff eric', 'cant think of names', 'anogther one', 'one more', 'last song name']


def music_method (arr)
  random_music_array = []
  arr.each { |x| random_music_array.push(x.split(' ').join('_'))}
  print random_music_array.shuffle
  puts
  print random_music_array.shuffle
end

music_method(music)

  #1 get rid of spaces with underscores
  #2 randomize array