

class Artist
  attr_accessor :name
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self if !@@all.include?(self) 
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    
    num_of_songs = 0 
    @@all.each do |artist|
    num_of_songs += artist.songs.count 
    end
    num_of_songs
end
end 