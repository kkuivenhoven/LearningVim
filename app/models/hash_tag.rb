class HashTag < ApplicationRecord
	# has_many :taggings
	has_many :taggings, :dependent => :destroy
	has_many :blogs, through: :taggings
end
