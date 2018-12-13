require "pry"

class School
  def initialize(name)
    @name = name
    @roster = {}
    #create a new roster because you need to define that roster is a hash in the beginning
    #doens't need to be an argument
  end


  def roster
    @roster
    #all test files are asking for school.roster
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
      #if roster[grade] exists, shovel student name into hash roster w/ key grade
    else
      @roster[grade] = []
      @roster[grade] << student_name
      #if roster[grade] is empty, create a new array & shovel name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
      #create a new key/value pair with name alphabetized
    end
  end
end
