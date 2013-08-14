class Circle < ActiveRecord::Base
  attr_accessible :name, :member_ids

  has_many :memberships,
  :class_name => "CircleMembership",
  :foreign_key => :circle_id,
  :primary_key => :id

  has_many :post_shares,
  :class_name => "PostShare",
  :foreign_key => :circle_id,
  :primary_key => :id

  has_many :posts,
  :through => :post_shares,
  :source => :post

  has_many :members,
  :through => :memberships,
  :source => :user

end
