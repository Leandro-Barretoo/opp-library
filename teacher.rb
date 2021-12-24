require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', mainclass = 'Teacher', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @mainclass = mainclass
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def create_array_instance
    myobj = {:mainclass => @mainclass, :name => @name, :id => @id, :age => @age}
  end
end
