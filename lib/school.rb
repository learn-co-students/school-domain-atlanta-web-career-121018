require'pry'

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      # We want to add student but not the grade
      @roster[grade] << student_name
    else
      # If the key is not there we want to add the key
      # And the student
      # hash = {"key1" => "value1"}
        @roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end



# school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)
