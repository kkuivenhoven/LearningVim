class StaticPagesController < ApplicationController
	before_filter :authenticate, :only => :login

  def home
		byebug
  end

	def login
		redirect_to root_path
	end

end
