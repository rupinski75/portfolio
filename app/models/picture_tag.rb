class PictureTag < ApplicationRecord
  belongs_to: :picture
  belongs_to: :tag
  validates_presence_of :picture_id
end
