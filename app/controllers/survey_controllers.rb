get "/surveys" do
# list of surveys
  @user = session_current_user
  @all_surveys = Survey.all
  @survey_titles = names_of_surveys_taken
  erb :survey_list
end

get "/surveys/:id" do
# page with description of picked survey
end

get "/surveys/:id/take" do
# actual link where survey is taken
end

get "/surveys/new" do
end