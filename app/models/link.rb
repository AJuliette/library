class Link < ApplicationRecord
  has_many :taggings, inverse_of: :link
  has_many :tags, through: :taggings, class_name: 'Tag'

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :taggings, allow_destroy: true
end
