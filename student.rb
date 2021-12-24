require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', mainclass = 'Student', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @mainclass = mainclass
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def create_array_instance
    myobj = {:mainclass => @mainclass, :name => @name, :id => @id, :age => @age}
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
