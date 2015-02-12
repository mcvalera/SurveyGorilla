require "bcrypt"

class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :surveys
  has_many :options, through: :selections
  has_many :selections




   # validates :user_name, uniqueness: { :message => "Username already Exists"}
   # validates :user_name, presence: {:message => "Need Username and Password to login/register"}
   # #validates :user_name, presence:true
   # validates :password_hash, presence: true

  include BCrypt
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
