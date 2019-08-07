class Artist
    attr_accessor :name, :songs
    
    def initialize (name)
      @name = name
      @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.find_all do |songs|
            songs.artist == self
        end
    end

    def add_song_by_name(song_title)
        song_title = Song.new(song_title)
        song_title.artist = self
    end

    def self.song_count
        Song.all.length
    end

end