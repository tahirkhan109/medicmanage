# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.where(:email => "admin@medicmanage.com")
user.destroy  if user.present?
puts "************Adding User Admin************"
user = User.new(:email => "admin@medicmanage.com", :password => "Medicmanage2014",:is_admin => true,:confirmed_at => "#{Time.now}")
#user.skip_confirmation!
user.save
puts "************User Admin Added Successfully************"

