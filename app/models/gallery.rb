class Gallery < ApplicationRecord
  has_many :pictures
  accepts_nested_attributes_for :pictures
  validates_presence_of :user_id, :title, :thumb_image
  belongs_to :user
end
