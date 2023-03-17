require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @class = Classroom.new('Grade 10')
  end

  def list_all_books
    if @books.empty?
      puts 'Ooops! the library empty, please add books'
      return
    end
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_all_people
    if @people.empty?
      puts 'Oooops! no people registered, please add people'
    else
      @people.map |person| 
        puts "[#{person.class}] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}, " 
      end
    end
  end

  def create_person
    puts 'Do you want to  create a student (1) or a teacher(2)?....'
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid input! Please type 1 or 2'
    end
  end

  def create_student
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Has Parent permission? [Y/N]:'
    parent_permission = gets.chomp.downcase

    student = Student.new(age, @class, name, parent_permission: permission)
    @people << student
    puts 'Student Created Successfully'
  end

  def create_teacher
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Specialization:'
    specialization = gets.chomp

    @people << Teacher.new(age, specialization, name)
    puts 'Teacher Created Successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)

    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
    puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end

    book_id = gets.chomp.to_i

    puts 'Select a person from the following list by number (not ID)'
    @people.each_with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_id = gets.chomp.to_i

      print 'Date: '
      date = gets.chomp.to_i

      @rentals << Rental.new(date, @people[person_index], @books[book_index])
      puts 'Rental created successfully'
    end
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i

    rentals = @rentals.filter { |rental| rental.person.id == id }

    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
  end
end