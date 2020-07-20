class User < ApplicationRecord
  validates_uniqueness_of :username
  validates :username, presence: true
  validates :full_name, presence: true

  has_many :posts, dependent: :destroy
  has_one_attached :photo
  has_one_attached :cover_image
  has_many :passive_relationships, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy
  has_many :active_relationships, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  #helper methods
  def follow(someone)
    active_relationships.create(follower_id: someone.id)
  end

  #unfollow methods
  def unfollow(someone)
    active_relationships.find_by(follower_id: someone.id).destroy
  end

  #is following a user
  def Following?(someone)
    following.include?(someone)
  end
end
