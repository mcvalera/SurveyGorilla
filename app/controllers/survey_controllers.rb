get "/surveys" do
# list of surveys

  @surveys = Survey.all
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
# @survey = Survey.find(params[:id])

end

get "/surveys/:id/take" do
# actual link where survey is taken
end