class User < ApplicationRecord
  validates_uniqueness_of :username

  has_many :posts
end
