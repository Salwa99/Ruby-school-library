require_relative 'nameDecorator'

class TrimmerDecorator < NameDecorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
