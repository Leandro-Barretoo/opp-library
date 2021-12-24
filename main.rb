require_relative './events'
require_relative './classroom'

class App
  include Events
  def initialize
    @classroom = Classroom.new('Microverse')
    @active = true
  end

  def options
    available = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person id',
      '7' => 'Exit'
    }
    puts 'Please choose an option by enterin a number:'
    available.each { |key,value| puts "#{key} - #{value}"}
  end

  def handle_number
    choice = gets.chomp
    case choice
    when '7'
      @active = false
      puts 'Thank you for using this app!'
    end
  end

  def run
    puts 'Welcome to School LIbrary App!'
    puts ''
    while @active do
      options
      handle_number
    end
  end
end

def main
  app = App.new
  app.run
end

main
