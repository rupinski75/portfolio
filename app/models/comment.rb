class Comment < ApplicationRecord
  validates_presence_of :user_id, :body
  belongs_to :article
  belongs_to :user
end
