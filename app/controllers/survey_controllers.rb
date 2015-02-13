get "/surveys" do
# list of surveys
# make new survey option
erb :survey
end

get "/surveys/:id" do
# page with description of picked survey
# @survey = Survey.find(params[:id])

end

get "/surveys/:id/take" do
# actual link where survey is taken
end