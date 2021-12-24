require_relative './student'

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

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    ans = gets.chomp
    case ans
    when '1'
      create_student
    end
  end
end
