post '/accounts/login' do
  user = User.find_by(user_name: params[:username])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect "/accounts/#{@user.id}"
  else
    redirect '/'
  end
end

# route for profile page
get "/accounts/:id" do
# button to take a new survey
# survey list
# user stats - V2!
end

