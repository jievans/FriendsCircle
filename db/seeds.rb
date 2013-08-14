# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(:username => "sean", :password => "sean")
User.create!(:username => "josh", :password => "josh")

Circle.create!(:name => "cool kids", :member_ids => [1])
Circle.create!(:name => "crazy kids", :member_ids => [2])