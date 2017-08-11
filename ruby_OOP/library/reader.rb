require "digest"
require "time"

class Reader
  attr_reader :name, :card_id, :borrowed_books, :history

  def initialize(name)
    @name = name
    @card_id = generate_card_id
    @borrowed_books = {}
    @history = {}
  end

  def generate_card_id
    @card_id = Digest::MD5.hexdigest "#{self}"
  end

  def borrow_books(library, *bookname)
    bookname.length.times do |i|
      book = library.check_book_availability(bookname[i])
      next if book == nil

      library.book_borrowed(book)
      @borrowed_books[book] = ["#{get_current_time}"]
    end
  end

  def print_borrowed_books
    print "%-18s #{@name} books list\n" % [""]
    @borrowed_books.length.times do |i|
      print "%-3d %-40s %-10s\n" % [i + 1, @borrowed_books.keys[i].bookname, @borrowed_books.values[i][0]]
    end
  end

  def return_books(library, *bookname)
    bookname.length.times do |i|
      book = @borrowed_books.keys.find { |book| book.bookname == bookname[i] }
      next if book == nil

      library.book_returned(book)
      add_book_to_user_history(book)
      @borrowed_books.delete(book)
    end
  end

  def add_book_to_user_history(book)
    book_holding_time = (Time.now - Time.parse(@borrowed_books[book][0])).round(2)
    @history[book] = book_holding_time
  end

  def print_reader_history
    print "%-18s #{@name} books history\n" % [""]
    @history.length.times do |i|
      print "%-3d %-40s %-5.2f seconds\n" % [i + 1, @history.keys[i].bookname, @history.values[i]]
    end
  end

  def get_current_time
    Time.new.strftime('%y-%m-%d %T')
  end
end
