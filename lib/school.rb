class School 
  
    attr_accessor :name, :grade, :roster
    
    def initialize(name, roster={})
      @name = name
      @roster = roster
    end
    
    def roster
      @roster
    end
    
    def add_student(name,grade)
      @roster[grade] ||= []
      @roster[grade] << name
    end
    
    def grade(grade)
      @roster[grade]
    end
    
    def sort
      @roster.map{|key,names| [key, names.sort]}.sort.to_h
    end
end