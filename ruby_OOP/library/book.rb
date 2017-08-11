class Book
  attr_reader :bookname
  attr_accessor :status

  def initialize(bookname)
    @bookname = bookname
    @status = :available
  end
end
