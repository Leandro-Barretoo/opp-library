require_relative './student'
require_relative './teacher'

module Events
  def create_student
    puts 'Age:'
    myage = gets.chomp
    puts 'Name:'
    myname = gets.chomp
    puts 'Has parent permission? [Y/N]:'
    mypermission = gets.chomp
    if mypermission == 'y' || mypermission == 'Y'
      mypermission = true
    elsif mypermission == 'n' || mypermission == 'N'
      mypermission = false
    end
    student = Student.new(@classroom, myage, myname, parent_permission: mypermission)
    @people_list.push(student)
  end

  def create_teacher
    puts 'Age:'
    myage = gets.chomp
    puts 'Name:'
    myname = gets.chomp
    puts 'Specialization:'
    myspeciality = gets.chomp
    teacher = Teacher.new(myspeciality, myage, myname)
    @people_list.push(teacher)
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    ans = gets.chomp
    case ans
    when '1'
      create_student
    when '2'
      create_teacher
    end
    puts 'Person created successfully'
  end
end
