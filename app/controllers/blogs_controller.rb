=begin
	documentation for http basic auth:
		https://api.rubyonrails.org/classes/ActionController/HttpAuthentication/Basic.html
=end

class BlogsController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", except: :index

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
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		@blog.update(title: params[:blog][:title], post: params[:blog][:post])
		redirect_to :action => 'index'
	end

	def destroy
	end

	def logout
		flash[:alert] = "inside logout action"
		redirect_to root_path
		return
=begin
		self.current_user.forget_me if logged_in?
		cookies.delete :auth_token
		reset_session
		# redirect_to '/', status: 401, flash: "You have been logged out."
		# redirect_to '/'#, lash: "You have been logged out."
		redirect_to root_path #, lash: "You have been logged out."
		# render :logout, status: 401
=end
	end

=begin
	def destroy 
		self.current_user.forget_me if logged_in?
		cookies.delete :auth_token
		reset_session
		redirect_to '/', status: 401, flash: "You have been logged out."
	end
=end

	private
		
		def blog_params
			params.require(:blog).permit(:title, :post)
		end

end
