class Blog
  @@blog_posts_count = 0
  @@blog_posts_all = []

  def self.all
    @@blog_posts_all
  end

  def self.add(post)
    @@blog_posts_all << post
    @@blog_posts_count += 1
  end

  def self.publish
    @@blog_posts_all.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
end

class BlogPost < Blog
  def self.create
    post = new
    puts "Title of blog post: "
    post.title = gets.chomp
    puts "What would you like to share?"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def created_at
    @created_at
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
