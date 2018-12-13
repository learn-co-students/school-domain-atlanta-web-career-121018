# code here!
require 'pry'

class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(name, grade_num)
		if @roster.has_key?(grade_num)
			@roster[grade_num] << name
		else
			@roster[grade_num] = [name]
		end
	end

	def grade(grade_num)
		@roster[grade_num]
	end

	def sort
		@roster.each do |key, value|
			@roster[key] = value.sort
		end
		@roster
	end
end

school = School.new("Bayside High School")

school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

school.sort
