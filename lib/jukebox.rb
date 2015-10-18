songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands '\n'"
  puts "- help : displays this help message '\n'"
  puts "- list : displays a list of songs you can play '\n'"
  puts "- play : lets you choose a song to play '\n'"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |x, index|
    puts "#{index + 1}. #{x}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  song_to_play = gets.chomp
  if !songs[song_to_play.to_i]
    puts "Invalid input, please try again"
  elsif song_to_play.to_i.to_s == song_to_play
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when "help"
      help
    when "play"
      list(songs)
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end

