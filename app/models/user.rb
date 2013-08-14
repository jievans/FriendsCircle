require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :username, :password

  include BCrypt

  def password=(password)
    self.password_digest = Password.create(password)
  end
end
