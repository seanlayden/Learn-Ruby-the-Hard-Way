# Modules, Classes, and Objects

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to you", "I don't want to get sued.", "So, I'll stop right there."])

bulls_on_parade = Song.new(["The rally around tha family", "With pockets full of shells!"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
