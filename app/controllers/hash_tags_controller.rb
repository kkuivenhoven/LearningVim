class HashTagsController < ApplicationController

	def index
		@hash_tags = HashTag.all
	end

	def show
		@hash_tag = HashTag.find(params["id"])
	end

end
