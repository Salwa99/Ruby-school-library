class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name, parent_permission = `true`)
    @id = generate_unique_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    # code to check if the person is of age
    @age >= 18
  end
  # rubocop:enable Naming/PredicateName

  private :is_of_age?

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def generate_unique_id
    rand(1..1000)
  end
end
