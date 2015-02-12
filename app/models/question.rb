class Question < ActiveRecord::Base
  has_many :options
  belongs_to :survey
  # Remember to create a migration!
end
