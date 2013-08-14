class PostShare < ActiveRecord::Base
  attr_accessible :circle_id, :post_id

  belongs_to :post,
  :class_name => "Post",
  :foreign_key => :post_id,
  :primary_key => :id

  belongs_to :circle,
  :class_name => "Circle",
  :foreign_key => :circle_id,
  :primary_key => :id

end
