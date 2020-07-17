class User < ApplicationRecord
  validates_uniqueness_of :username
  validates :username, presence: true
  validates :full_name, presence: true

  has_many :posts
end
