post '/accounts/login' do
  user = User.find_by(username: params[:username])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect "/accounts/#{user.id}"
  else
    redirect '/'
  end
end

# route for profile page
# make new survey option
get "/accounts/:id" do
  redirect '/' unless session[:user_id]
  @user = User.find(session[:user_id])

  erb :profile
end



