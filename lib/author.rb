require 'pry'
class Author
    attr_accessor :posts
    attr_reader :name
    def initialize(name)
        @name = name
        @posts = posts
    end    

    def posts
        Post.all.select do |article|
            article.author == self
        end
    end
    def add_post(posting)
        posting.author = self
    end
    def add_post_by_title(post_title)
        add_post(Post.new(post_title))
    end
    def self.post_count
        our_posts = Post.all.select {|article| article.author_name != nil}
        our_posts.count
    end

end
