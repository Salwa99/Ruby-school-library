require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name, parent_permission = `true`)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    # rubocop:disable Style/RedundantStringEscape
    "¯\(ツ)/¯"
    # rubocop:enable Style/RedundantStringEscape
  end
end
