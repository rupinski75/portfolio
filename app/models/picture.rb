class Picture < ApplicationRecord
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  validates_presence_of :gallery_id, :size, :image_link
end
