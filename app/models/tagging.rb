class Tagging < ApplicationRecord
  belongs_to :blog
  belongs_to :hash_tag
end
