class Blog < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body, :user_id
end
