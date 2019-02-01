require 'pry'
require_relative 'lib/school.rb'

new_school = School.new("new_school")
new_school.add_student("meh", 11)
new_school.add_student("poop", 12)
new_school.add_student("poo", 11)

binding.pry
