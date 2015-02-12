# note that not these aren't all just get routes.

get '/' do
# login in navbar in layout.erb
# registration form in home page
  erb :index
end

# to register
get '/accounts/new' do
# lead to profile page
end

# to login
get '/accounts/login' do
# lead to profile page
end

# route for profile page
get '/accounts/:id' do
# button to take a new survey
# survey list
# user stats - V2!
end

get '/accounts/:id/surveys' do
# list of surveys
# make new survey option
end

get '/accounts/:id/surveys/:id' do
# page with description of picked survey
end

get '/accounts/:id/surveys/take' do
# actual link where survey is taken
end