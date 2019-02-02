class User < ApplicationRecord
  validates_presence_of :email, :password, :name
  has_many :comments
  has_many :galleries
  has_many :blogs
end
