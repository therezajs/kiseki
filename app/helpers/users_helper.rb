module UsersHelper

  def check_password(user_id)
    return true unless user_params[:old_password] && user_params[:password]
    User.find_by(id: user_id).try(:authenticate, user_params[:old_password])
  end

  def find_user(user_id)
    @find_user = User.find(user_id)
  end

end
