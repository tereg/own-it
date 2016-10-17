require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt
  has_many  :subjects
  validates :first_name, :last_name, :username, :pwd_hash, :email, presence: true
	validates :username, :email, uniqueness: true 
  

  def password
    @password ||= Password.new(pwd_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.pwd_hash = @password
  end
end