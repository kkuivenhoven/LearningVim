class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to :action => 'index'
		else
			render :action => 'new'
		end
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		@blog.update(title: params[:blog][:title], post: params[:blog][:post])
		redirect_to :action => 'index'
	end

	def destroy
		Blog.destroy(params[:id])
		redirect_to blogs_path
	end

	private
		
		def blog_params
			params.require(:blog).permit(:title, :post)
		end

end
