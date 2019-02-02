class Gallery < ApplicationRecord
  has_many :pictures
  validates_presence_of :user_id, :title
end
