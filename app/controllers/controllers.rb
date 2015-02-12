
enable :sessions
# note that not these aren't all just get routes.


post '/accounts/new' do
  @user = User.new(user_name: params[:username])
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

get '/logout' do
  session.delete :user_id
  redirect '/'
end




