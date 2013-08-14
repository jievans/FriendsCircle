class Circle < ActiveRecord::Base
  attr_accessible :name, :member_ids

  has_many :memberships,
  :class_name => "CircleMembership",
  :foreign_key => :circle_id,
  :primary_key => :id

  has_many :members,
  :through => :memberships,
  :source => :user

end
