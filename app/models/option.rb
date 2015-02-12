class Option < ActiveRecord::Base
  has_many :selections
  has_many :users, through: :selections
  belongs_to :question
  # Remember to create a migration!
end
