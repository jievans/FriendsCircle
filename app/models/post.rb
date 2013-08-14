class Post < ActiveRecord::Base
  attr_accessible :body, :user_id, :circle_ids, :links_attributes

  has_many :post_shares,
  :class_name => "PostShare",
  :foreign_key => :post_id,
  :primary_key => :id

  has_many :circles,
  :through => :post_shares,
  :source => :circle

  has_many :links,
  :class_name => "Link",
  :foreign_key => :post_id,
  :primary_key => :id

  belongs_to :user,
  :class_name => "User",
  :foreign_key => :user_id,
  :primary_key => :id

  accepts_nested_attributes_for :links

end
