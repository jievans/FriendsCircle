require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :username, :password, :circle_ids

  before_validation :generate_token, :on => :create

  has_many :memberships,
  :class_name => "CircleMembership",
  :foreign_key => :user_id,
  :primary_key => :id

  has_many :circles,
  :through => :memberships,
  :source => :circle

  has_many :posts,
  :class_name => "Post",
  :foreign_key => :user_id,
  :primary_key => :id

  include BCrypt

  def password=(password)
    self.password_digest = Password.create(password).to_s
  end

  def password_equals?(password)
    Password.new(self.password_digest).is_password?(password)
  end

  def change_token!
    generate_token
    self.save!
  end

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end

end
