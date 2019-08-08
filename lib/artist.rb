class Artist
  # read and write to name
  attr_accessor :name

  # every new Artist must have name
  def initialize(name)
    @name = name
  end

  # returns total number of songs by any artist
  def self.song_count
    Song.all.count
  end

  # returns all instances of Song where song_instance.artist is the current instance of Artist
  def songs
    Song.all.find_all do |song|
      song.artist == self
    end
  end

  # when given a Song instance, assigns the song_instance.artist a value of the current Artist instance
  def add_song(song)
    song.artist = self
  end

  # when given a song name, creates a new Song of that name and associate the current Artist instance
  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end
end
