class Person
  attr_accessor :id, :name, :age

  def initialize(name: 'Unknown', age: nil, parent_permission: true)
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def generate_id
    rand(100_000..999_999)
  end

  def of_age?
    @age.to_i >= 18
  end
end
