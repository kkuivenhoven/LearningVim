=begin
	documentation for http basic auth:
		https://api.rubyonrails.org/classes/ActionController/HttpAuthentication/Basic.html
=end

class BlogsController < ApplicationController
	# http_basic_authenticate_with name: "dhh", password: "secret" #, except: :index

	def index
		@blogs = Blog.all
	end

=begin
	def show
	end
=end

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
=begin
		authenticate_or_request_with_http_basic do |username, password|
			if(username == "dhh" && password == "secret")
				@blog = Blog.find(params[:id])
			else
				redirect_to root_path
			end
		end
=end
	end

	def update
		@blog = Blog.find(params[:id])
		@blog.update(title: params[:blog][:title], post: params[:blog][:post])
		redirect_to :action => 'index'
	end

	def destroy
	end

	private
		
		def blog_params
			params.require(:blog).permit(:title, :post)
		end

end
