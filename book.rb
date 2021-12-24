class Book
  attr_reader :rentals
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def create_array_instance
    myobj = {:title => @title, :author => @author}
  end
end
