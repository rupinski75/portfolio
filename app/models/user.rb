class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  #enum user_type: { user: 0, admin: 1}
  #enum is_confirmed: { not_confirmed: 0, confirmed: 1}
  validates_presence_of :email, :password
  has_many :comments
  has_many :galleries
  has_many :articles
end
