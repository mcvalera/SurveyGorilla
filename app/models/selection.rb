class Selection < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :survey
  belongs_to :option

  def self.unanswered_questions(args)
    user = User.find(args[:user_id])
    survey = Survey.find(args[:survey_id])
    survey_questions = survey.questions
    taken_options = user.options
    # answered_questions = taken_options.map{ |option| option.question}
    answered_questions = taken_options.map(&:question)
    return survey_questions-answered_questions
  end
end
