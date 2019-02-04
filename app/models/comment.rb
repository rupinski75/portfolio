class Comment < ApplicationRecord
  validates_presence_of :user_id, :body, :picture_id
  belongs_to :user
  belongs_to :picture
end
