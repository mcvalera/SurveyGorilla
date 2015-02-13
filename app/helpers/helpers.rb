helpers do

  def session_logged_in?
    !session[:user_id].blank?
  end

  def session_current_user
    User.find(session[:user_id])
  end

  def names_of_surveys_taken
    survey_ids = session_current_user.selections.where(user_id: session_current_user.id).pluck(:survey_id)
    survey_titles = []
    survey_ids.each do |id|
      survey_titles << Survey.find(id)
    end
    return survey_titles
  end

  def surveys_created
    Survey.where(user_id: session_current_user.id)
  end

end
