class Song

attr_accessor :artist
@@all = []

def initialize (name)
  @name = name
   @@all << self
end

def self.all
   @@all
end

def name
  @name
end

def artist
  @artist
end

def artist_name
  if !!self.artist == true
    return self.artist.name
  end
end

end
