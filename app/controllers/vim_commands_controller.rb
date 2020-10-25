class VimCommandsController < ApplicationController
	require 'socket'
	require 'resolv-replace'

	before_filter :authenticate, :except => [:index]
	before_action :getIpAddr
	
	def index
		if params[:commit] == "Search"
			@vim_commands = VimCommand.where("LOWER(description) like ?", "%#{params[:search.downcase]}%")
		else
			@vim_commands = VimCommand.all
		end
	end

=begin
	def show
		# @vim_command = VimCommand.find(params[:id])
	end
=end

	def new
		@vim_command = VimCommand.new
	end

	def create
		@vim_command = VimCommand.new(vim_commands_params)
		if @vim_command.save
			redirect_to vim_commands_path
		else
			render 'new'
		end
	end

	def edit
		@vim_command = VimCommand.find(params[:id])
	end

	def update
		@vim_command = VimCommand.find(params[:id])
		if @vim_command.update_attributes(vim_commands_params)
			redirect_to vim_commands_path
		else 
			render 'edit'
		end
	end

	def destroy
		VimCommand.find(params[:id]).destroy
		redirect_to vim_commands_path
	end

	private 

		def vim_commands_params
			params.require(:vim_command).permit(:description, :img_example, :command, :img_example_before)
		end

		def getIpAddr
			@ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
			@ipAddr = @ip.ip_address
		end

end
