class Blog < ApplicationRecord
	has_many :taggings
	has_many :hash_tags, through: :taggings
end
