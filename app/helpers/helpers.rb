helpers do

  def session_logged_in?
    !session[:user_id].blank?
  end

  def session_current_user
    User.find(session[:user_id])
  end

end
