class PostsController < ApplicationController
	before_action :logged_in?, :get_post, only: [:show, :edit, :update, :destroy]

	def index
		@post = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "successfully posted!"
			redirect_to posts_path
		else 
			flash[:error] = "something went wrong"
			redirect_to posts_path
		end
	end

	def show
		@post = get_post
	end

	def edit
		@post = get_post
	end

	def update
		post = get_post
		post.update_attributes(post_params)
		redirect_to post_path(post)
	end

	def destroy
		post = get_post
		post.destroy
		redirect_to posts_path
	end

	private

	def post_id
		params[:id]
	end

	def get_post
		Post.find_by_id(post_id)
	end

	def post_params
		params.require(:post).permit(:date, :title, :post, :user_id)
	end

end
