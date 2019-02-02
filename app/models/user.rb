class User < ApplicationRecord
  has_many :comments, :galleries, :articles
  validates_presence_of :email, :password, :name
end
