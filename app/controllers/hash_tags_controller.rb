class HashTagsController < ApplicationController
	require 'json'

	def index
		@hash_tags = HashTag.all
		@json_hash_tags = {}
	 	@hash_tags.each do |h_t|
			@json_hash_tags[h_t.name] = h_t.blogs.all.count
		end	
	end

	def show
		@hash_tag = HashTag.find(params["id"])
	end

end
