require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

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

  def display_people_list
    @people_list.each do |enum|
      obj = enum.create_array_instance
      puts "[#{obj[:mainclass]}] Name: #{obj[:name]}, ID: #{obj[:id]}, Age: #{obj[:age]}"
    end
  end

  def create_book
    puts 'Title:'
    mytitle = gets.chomp
    puts 'Author:'
    myauthor = gets.chomp
    book = Book.new(mytitle, myauthor)
    @books.push(book)
    puts 'Book created successfully'
  end

  def display_books
    @books.each do |enum|
      obj = enum.create_array_instance
      puts "Title: \"#{obj[:title]}\", Author: #{obj[:author]}"
    end
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |enum, idx|
      obj = enum.create_array_instance
      puts "#{idx}) Title: \"#{obj[:title]}\", Author: #{obj[:author]}"
    end
    book_choice = gets.chomp.to_i
    puts ''
    puts 'Select a person from the following list by number (not id)'
    @people_list.each_with_index do |enum, idx|
      obj = enum.create_array_instance
      puts "#{idx}) [#{obj[:mainclass]}] Name: #{obj[:name]}, ID: #{obj[:id]}, Age: #{obj[:age]}"
    end

    people_choice = gets.chomp.to_i
    puts ''
    puts 'Date:'
    mydate = gets.chomp
    rental = Rental.new(mydate, @people_list[people_choice], @books[book_choice])
    @rentals.push(rental)
    puts 'Rental created successfully'
  end
end
