class AddAuthorIdToBlogPosts < ActiveRecord::Migration
  def change
    add_reference :blog_posts, :author, index: true, foreign_key: true
  end
end
