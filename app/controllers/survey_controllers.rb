get "/surveys" do
# list of surveys
  @user = session_current_user
  @all_surveys = Survey.all
  @surveys_created = surveys_created
  @survey_titles = names_of_surveys_taken
  erb :survey_list
end

get "/surveys/:id" do
# page with description of picked survey
  @survey = Survey.find(params[:id])
  @num_of_questions = @survey.questions.count
  erb :survey_description
end

get "/surveys/:id/take" do
# actual link where survey is taken
end

get "/surveys/new" do
end