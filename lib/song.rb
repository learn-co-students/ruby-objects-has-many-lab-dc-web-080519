class Song

    attr_accessor :artist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @artist = artist
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name
        end
    end
end