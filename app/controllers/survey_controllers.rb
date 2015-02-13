get "/surveys" do
# list of surveys

  @surveys = Survey.all
  erb :survey_list

end


get "/surveys/new" do
  erb :newsurvey
end

get "/surveys/:id" do
# page with description of picked survey
# @survey = Survey.find(params[:id])

end

get "/surveys/:id/take" do
# actual link where survey is taken
end