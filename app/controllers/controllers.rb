
enable :sessions

post '/accounts/new' do
  @user = User.new(username: params[:username])
  @user.password = params[:password]

  if @user.save
    session[:user_id] = @user.id
    redirect "/accounts/#{@user.id}"
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




