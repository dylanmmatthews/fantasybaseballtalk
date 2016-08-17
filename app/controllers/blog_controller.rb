class BlogController < ApplicationController
  def index
  	@posts = BlogPost.all.order('created_at desc')
  end

  def post
    @post = BlogPost.find(params[:id])
  end
end
