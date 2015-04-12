class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end

  def add_some_more_lyrics(new_lyrics) 
  	@full_lyrics = @lyrics + new_lyrics #when tried to include a new-line escape didn't let me - told me I had to change to an array explicity?
  	puts "Here is the new full lyrics"
  	puts @full_lyrics
  end
end

happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])

champagne_supernova = Song.new(["Some day you will find me, caught beneath the landslide", "Like a champagne supernova in the sky!"])

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()
champagne_supernova.sing_me_a_song
champagne_supernova.add_some_more_lyrics(["Wake up the dawn and ask her why", "A dreamer dreams she never dies", 
										"Wipe that tear away now from your eye", "Slowly walking down the hall",
										"Faster than a cannon ball", "Where were you when we were getting high?"])