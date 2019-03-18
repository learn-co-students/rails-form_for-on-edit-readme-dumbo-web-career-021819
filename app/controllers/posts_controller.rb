class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new

	end

	def create
	  @post = Post.create(title: params[:title], description: params[:description])
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(title: params[:post][:title], description: params[:post][:description])
	  redirect_to post_path(@post)
	end
end
