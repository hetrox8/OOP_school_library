require_relative 'decoreator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
