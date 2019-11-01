class Tagging < ApplicationRecord
  belongs_to :link
  belongs_to :tag

  accepts_nested_attributes_for :tag, :reject_if => :all_blank
end
