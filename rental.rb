class Rental
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def rental_info
    id = @person.create_array_instance[:id]
    book_title = @book.create_array_instance[:title]
    book_author = @book.create_array_instance[:author]
    {
      id: id,
      date: @date,
      bk_title: book_title,
      bk_author: book_author
    }
  end
end
