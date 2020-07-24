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
    render '/pages/not_followings' if current_user.id != user.id
  end

  # rubocop:disable Style/GuardClause
  def follow_button(user)
    if current_user.id != user.id
      if !current_user.following?(user)
        link_to '+', followings_path(id: @user), method: :post, class: 'btn follow_button_add'
      else
        render 'components/follow_button'
      end
    end
  end

  def follow_follower_btn(follower)
    if current_user.id != follower.id
      if !current_user.following?(@follower)
        link_to '+', followings_path(id: @follower), method: :post, class: 'btn follow_button_add_sm'
      else
        render 'components/follow_follower_btn'
      end
    end
  end

  def unfollow_button(_user)
    if current_user.id != @user.id
      if !current_user.following?(@user)
        render 'components/unfollow_button'
      else
        link_to '-', following_path(id: @user.id), method: :delete, class: 'btn follow_button_sub'
      end
    end
  end
  # rubocop:enable Style/GuardClause
end
