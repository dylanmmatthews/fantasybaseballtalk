class AddCategoryIdToBlogPosts < ActiveRecord::Migration
  def change
    add_reference :blog_posts, :category, index: true, foreign_key: true
  end
end
