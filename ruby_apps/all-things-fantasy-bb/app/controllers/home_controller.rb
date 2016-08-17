class HomeController < ApplicationController
	def index
		@latest_post = BlogPost.limit(1).order("created_at desc")
		get_show_posts
	end

	def post
		@post = BlogPost.find(params[:id])
	end

	private

	def get_show_posts
		@posts = BlogPost.all.paginate(page: params[:page], per_page: 3).order("created_at desc")
		respond_to do |format|
			format.html
			format.js
		end
	end
end
