class Comment < ApplicationRecord
  validates_presence_of :user_id, :body, :resource_id, :resource_type
end
