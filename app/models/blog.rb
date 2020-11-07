class Blog < ApplicationRecord
	has_many :taggings
	has_many :hash_tags, through: :taggings
	accepts_nested_attributes_for :hash_tags
end
