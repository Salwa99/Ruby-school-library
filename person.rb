class Person 
    attr_reader :id
    attr_accessor :name, :age

    def initialize(age, name = "Unknown", parent_permission = true)
        @id = generate_unique_id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def is_of_age?
        @age >= 18
    end

    private :is_of_age?
    
    def can_use_services?
        is_of_age? || @parent_permission
    end


    def generate_unique_id
        rand(1..1000)
    end
end
