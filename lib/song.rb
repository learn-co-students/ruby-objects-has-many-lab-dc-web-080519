class Song
  # empty array to keep track of all existing Song instances
  @@all = []
  # read and write to name and artist values
  attr_accessor :name, :artist

  # all new instances must have name
  def initialize(name)
    @name = name
    # add new instance to all array
    @@all << self
  end

  # returns array of all Song class instances
  def self.all
    @@all
  end

  # if the current Song instance is assigned an artist, return their name. Otherwise, return nil
  def artist_name
    self.artist ? self.artist.name : nil
  end
end
