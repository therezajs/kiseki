require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  has_many :posts
  has_many :comments
  has_many :replies

  attr_accessor :old_password
  # has_many :posts

  validates :username, :first_name, :last_name, :email, :presence => true
  validates :username, :first_name, :last_name, :length => { :maximum => 50 }
  validates :username, :uniqueness => true

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :email, :format => { :with => email_regex }, :uniqueness => true


  has_secure_password


  # def password
  #   @password ||= Password.new(password_digest)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end
end
