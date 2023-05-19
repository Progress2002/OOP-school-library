require './person'

class Teacher < Person
  def initialize(age, name = 'Unknown', parent_permission: true, specialization: nil)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
