
enable :sessions
# note that not these aren't all just get routes.


get '/accounts/new' do
  erb :register
end

post '/accounts/new' do
  @user = User.new(user_name: params[:username])
  @user.password = params[:password]

  if @user.save
    session[:user_id] = @user.id
    redirect '/accounts/login'
  else
    erb :register
  end
end

post '/login' do
  user = User.find_by(user_name: params[:username])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/accounts/login'
  else
    redirect '/'
  end
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end


get '/' do
redirect '/' unless session[:user_id]
# login in navbar in layout.erb
# registration form in home page
  erb :index
end



# to login
post "/accounts/login" do
# lead to profile page
end

# route for profile page
get "/accounts/:id" do
# button to take a new survey
# survey list
# user stats - V2!
end

get "/accounts/:id/surveys" do
# list of surveys
# make new survey option
end

get "/accounts/:id/surveys/:id" do
# page with description of picked survey
end

get "/accounts/:id/surveys/take" do
# actual link where survey is taken
end