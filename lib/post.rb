class Post

attr_accessor :author
@@all = []

def initialize (title)
  @title = title
   @@all << self
end

def self.all
   @@all
end

def title
  @title
end

def author
  @author
end

def author_name
  if !!self.author == true
    return self.author.name
  end
end

end
