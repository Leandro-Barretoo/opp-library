require_relative './person'

class Student < Person
  def constructor(classroom)
    super
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
