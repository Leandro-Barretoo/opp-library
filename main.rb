class App
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

  def run
    puts 'Welcome to School LIbrary App!'
    puts ''
    options
  end
end

def main
  app = App.new
  app.run
end

main
