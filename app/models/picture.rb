class Picture < ApplicationRecord
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  validates_presence_of :size, :image_link
  belongs_to :gallery
end
