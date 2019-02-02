class Comment < ApplicationRecord
  validates_presence_of :user_id, :body, :resource_id, :resource_type
  belongs_to :user,
  has_many :comments
end
