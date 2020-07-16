module ApplicationHelper
  def user_signed_in
    if current_user
      render '/pages/navbar_layout'
    else
      render '/pages/welcome'
    end
  end
end
