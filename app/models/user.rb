class User < ApplicationRecord
  validates_presence_of :email, :password, :name
 # has_many :comments, :galleries#, :blogs
end
