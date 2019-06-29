class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def show
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			byebug
			redirect_to :action => 'index'
		else
			render :action => 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		
		def blog_params
			params.require(:blog).permit(:title, :post)
		end

end
