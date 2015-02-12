
enable :sessions
# note that not these aren't all just get routes.


post '/accounts/new' do
  @user = User.new(username: params[:username])
  @user.password = params[:password]

  if @user.save
    session[:user_id] = @user.id
    redirect "/accounts/#{@user.id}"
    #redirect "/accounts/"
  else
    erb :index
  end
end

get '/' do
  #redirect '/accounts/:user_id' if session[:user_id]
  erb:index
end

post "/accounts/login" do
  user = User.find_by(username: params[:username])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect "/accounts/#{user.id}"
  else
    redirect '/'
  end
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end




# route for profile page
get "/accounts/:id" do
# button to take a new survey
# survey list
# user stats - V2!
end

get "/surveys" do
# list of surveys
# make new survey option
end

get "/accounts/:id/surveys/:id" do
# page with description of picked survey
end

get "/accounts/:id/surveys/take" do
# actual link where survey is taken
end