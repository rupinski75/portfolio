class User < ApplicationRecord
  enum user_type: { user: 0, admin: 1}
  enum is_confirmed: { not_confirmed: 0, confirmed: 1}
  validates_presence_of :email, :password, :name
  has_many :comments
  has_many :galleries
  has_many :articles
end
