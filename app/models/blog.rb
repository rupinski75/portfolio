class Blog < ApplicationRecord
  validates_presence_of :title, :body, :author
  has_many :pictures
  belongs_to :user
end
