# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:username => "Buck", :password => "password")
User.create!(:username => "Wenbo", :password => "password")
User.create!(:username => "name1", :password => "password")
User.create!(:username => "name2", :password => "password")
User.create!(:username => "name3", :password => "password")
User.create!(:username => "name4", :password => "password")
User.create!(:username => "name5", :password => "password")

Tag.create!(:name => "food")
Tag.create!(:name => "military")
Tag.create!(:name => "drugs")