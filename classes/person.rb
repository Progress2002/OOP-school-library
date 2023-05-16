require_relative 'nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def of_age?
    @age >= 18
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private :of_age?
end
