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