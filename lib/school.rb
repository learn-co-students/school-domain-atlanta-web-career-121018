require 'pry'

class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    #create a new hash to house the sort
    roster.each do |grade, name|
    #iterate over roster to access all
      sorted[grade] = name.sort
      #call the new hash and access by key, then sort by value
    end
    sorted
    #call sorted to get new hash .each returns the original
  end

end
