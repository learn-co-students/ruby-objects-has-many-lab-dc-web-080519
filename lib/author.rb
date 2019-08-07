class Author

attr_accessor :name, :posts

    def initialize (name)
        @name = name
        @posts = []
    end

    def add_post (post)
        post.author = self
    end

    def add_post_by_title(title)
        title = Post.new(title)
        title.author = self
    end

    def posts
        Post.all.find_all do |post|
            post.author == self
        end
    end

    def self.post_count
        Post.all.length
    end

end