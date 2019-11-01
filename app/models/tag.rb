class Tag < ApplicationRecord
  has_many :taggings, inverse_of: :tag
  has_many :links, through: :taggings
end
