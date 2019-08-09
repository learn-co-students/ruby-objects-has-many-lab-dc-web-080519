class Artist
    attr_accessor :songs
    attr_reader :name
    def initialize(name)
        @name = name
        @songs = songs
    end    

    def songs
        Song.all.select {|tune| tune.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end
    def self.song_count
        our_songs = Song.all.select {|tune| tune.artist_name != nil}
        our_songs.count
    end


end