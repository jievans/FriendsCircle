class CircleMembership < ActiveRecord::Base
  attr_accessible :circle_id, :user_id

  belongs_to :circle,
  :class_name => "Circle",
  :foreign_key => :circle_id,
  :primary_key => :id

  belongs_to :user,
  :class_name => "User",
  :foreign_key => :user_id,
  :primary_key => :id

end
