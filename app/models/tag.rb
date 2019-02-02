class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :picture, through: :picture_tags
  validates_presence_of :name
  end
