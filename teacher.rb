require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parnt_permission: true)
    super(age, name, parent_permission)
    @specializtion = specialization
  end

  def can_use_services?
    true
  end
end
