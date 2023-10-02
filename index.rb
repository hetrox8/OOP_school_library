class Person
    attr_reader :id, :name, :age

    def initialize(id, age = nil, name: "unkown", parent_permission: true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def name = (new_name)
        @name = new_name
    end
    def age = (new_age)
        @age = new_age
    end

    def can_use_services?
        of_age? || @parent_permission
    end

    private

    def of_age?
        @age.to_1 >= 18
    end
end

class Student < Person
    def initialize(id, classroom, age = nil, name: "Unknown", parent_permission: true)
      super(id, age, name: name, parent_permission: parent_permission)
      @classroom = classroom
    end
  
    def play_hooky
      "¯\\(ツ)/¯"
    end
  end

  class Teacher < Person
    def initialize(id, specialization, age = nil, name: "Unknown", parent_permission: true)
      super(id, age, name: name, parent_permission: parent_permission)
      @specialization = specialization
    end
  
    def can_use_services?
      true
    end
  end
