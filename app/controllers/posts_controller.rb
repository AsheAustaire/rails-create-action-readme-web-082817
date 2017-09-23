class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def index
		@posts = Post.all
	end

	def create
		#takes in params from new.erb
		#.creates a new posts
		@post = Post.new
		@post.title = params[:title]
		@post.description = params[:description]
		@post.save
		redirect_to post_path(@post)
	end
end
