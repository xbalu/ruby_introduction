class Library
  attr_reader :books_list

  def initialize
    @books_list = []
  end

  def add_new_books(*books)
    books.length.times { |i| @books_list << Book.new(books[i]) }
  end

  def check_book_availability(name)
    @books_list.find { |book| book.bookname == name && book.status == :available }
  end

  def book_borrowed(book)
    book.status = :borrowed
  end

  def book_returned(book)
    book.status = :available
  end

  def print_books_list
    forward_private_books_list
  end

  def take_a_nap
    sleep(3)
    3.times { puts "" }
  end

  private

  def forward_private_books_list
    print "%-19sLibrary resources\n" % [""]
    @books_list.length.times do |i|
      print "%-3d %-40s %-10s\n" % [i + 1, books_list[i].bookname, books_list[i].status]
    end
  end
end
