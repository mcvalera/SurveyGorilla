get "/surveys" do
# list of surveys
  @user = session_current_user
  @all_surveys = Survey.all
  @surveys_created = surveys_created
  @survey_titles = names_of_surveys_taken
  erb :survey_list
end


get "/surveys/new" do
  erb :newsurvey
end

post "/surveys/new" do
  survey_info = params[:survey]
  user_id = session[:user_id]
  current_user= User.find(user_id)

  current_user.surveys.create({description: survey_info[:description], name: survey_info[:name] })

  current_survey=current_user.surveys.last
  current_survey.questions.create({text: survey_info[:question_0]})
  current_survey_options=

  redirect '/surveys'

end

get "/surveys/:id" do
# page with description of picked survey
  @survey = Survey.find(params[:id])
  @num_of_questions = @survey.questions.count
  erb :survey_description
end

get "/surveys/:id/take" do
  @survey = Survey.find(params[:id])
  user_id = session[:user_id]
  questions_left = Selection.unanswered_questions({user_id: user_id, survey_id: @survey.id})
  next_question = questions_left.sample
  redirect ("/surveys/%d/question/%d" % [@survey.id, next_question.id])
end