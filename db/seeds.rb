# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Program.destroy_all

program_data = [{serialnumber: "2013070101", title: "2013 Summer Program, Section 1, Course 1", section: 1, course: 1, startdate: "2013/07/15", enddate: "2013/07/19"}, 
      {serialnumber: "2013070102", title: "2013 Summer Program, Section 1, Course 2", section: 1, course: 2, startdate: "2013/07/22", enddate: "2013/07/26"}, 
      {serialnumber: "2013070201", title: "2013 Summer Program, Section 2, Course 1", section: 2, course: 1, startdate: "2013/07/29", enddate: "2013/08/02"}, 
      {serialnumber: "2013070202", title: "2013 Summer Program, Section 2, Course 2", section: 2, course: 2, startdate: "2013/08/05", enddate: "2013/08/09"}, 
      {serialnumber: "2013090101", title: "2013 Annual Program, Section 1, Course 1", section: 1, course: 1, startdate: "2013/09/15", enddate: "2014/01/12"},
      {serialnumber: "2013090102", title: "2013 Annual Program, Section 1, Course 2", section: 1, course: 2, startdate: "2014/02/02", enddate: "2014/06/15"}]

program_data.each do |p|
  m = Program.new
  m.serialnumber = p[:serialnumber]
  m.title = p[:title]
  m.section = p[:section]
  m.course = p[:course]
  m.startdate = p[:startdate]
  m.enddate = p[:enddate]
  m.save
end

puts "There are now #{Program.count} programs in the database"

User.destroy_all

user_data = [{username: "admin_001", password: "password1", age: 35, gender: "female", organization: "LI^x", interest: "administrator"}, 
             {username: "admin_002", password: "password2", age: 30, gender: "male", organization: "LI^x", interest: "administrator"}]

user_data.each do |u|
  n = User.new
  n.username = u[:username]
  n.password = u[:password]
  n.age = u[:age]
  n.gender = u[:gender]
  n.organization = u[:organization]
  n.interest = u[:interest]
  n.save
end

puts "There are now #{User.count} users in the database"







