class Gallery < ApplicationRecord
  has_many :pictures
  validates_presence_of :user_id, :title, :thumb_image
  belongs_to :user
end
