class PostsController < ApplicationController
before_action :get_post, only: [:show, :edit, :update]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
	end

	def update
		# byebug
	  @post.update(my_params)
	  redirect_to post_path(@post)
	end

	private

	def get_post
		@post = Post.find(params[:id])
	end

	def my_params
		params.require(:post).permit(:title, :description)
	end
end
