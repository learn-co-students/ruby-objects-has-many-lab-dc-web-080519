require('pry')

class Artist

attr_accessor :name

# binding.pry
def initialize (name)
  @name = name
  @songs = []
  # binding.pry
end

def songs
    Song.all.select {|song| song.artist == self}
end

def add_song(song)
  song.artist = self
end

def add_song_by_name(name)
  song = Song.new(name)
  song.artist = self
end

def self.song_count
  Song.all.length
end

end
