class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name, parent_permission = `true`)
    @id = generate_unique_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def generate_unique_id
    rand(1..1000)
  end
end
