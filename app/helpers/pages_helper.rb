module PagesHelper
  def user_avatar(user_id)
    user = User.find(user_id)
    if user.photo.attached?
        image_tag user.photo, class: 'tweet_profile_mage'
    else
        image_tag 'default_avatar.jpg', class: 'tweet_profile_mage'
    end
  end 

  def user_cover_image(user_id)
    user = User.find(user_id)
    if user.photo.attached?
        image_tag user.cover_image, class: 'cover_image'
    else
        image_tag 'default_cover_image.jpg', class: 'cover_image'
    end
  end

  def user_profile_image(user_id)
    user = User.find(user_id)
    if user.photo.attached?
        image_tag user.photo, class: 'profile_image_large'
    else
        image_tag 'default_avatar.jpg', class: 'profile_image_large'
    end
  end

  def not_followings(user)
    if current_user.id != user.id
      render '/pages/not_followings'
    end
  end
end
