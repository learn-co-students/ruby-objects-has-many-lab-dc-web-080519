class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.post_count
    Post.all.count
  end

  def posts
    Post.all.find_all do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    new_post = Post.new(name)
    new_post.author = self
  end

end
