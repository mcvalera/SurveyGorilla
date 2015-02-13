get "/surveys" do
# list of surveys
  @surveys = Survey.all
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