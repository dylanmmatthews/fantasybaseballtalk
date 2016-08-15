class Author < ActiveRecord::Base
	has_many :blog_posts
end
