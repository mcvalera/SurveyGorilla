get "/surveys/:sid/question/:qid" do |s_id, q_id|
  @question = Question.find(q_id)
  erb :answer
end

post "/surveys/:sid/question/:qid" do |s_id, q_id|
  answer_info = params[:answer]
  user_id = session[:user_id]
  answer_info.each do |option_id, response|
    Selection.create({user_id: user_id, survey_id: s_id, option_id: option_id, response: response})
  end

  # send off to next answer somehow, sorry we didn't get to it.

end
