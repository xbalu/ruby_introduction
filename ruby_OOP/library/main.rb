require "./library.rb"
require "./book.rb"
require "./reader.rb"

library = Library.new
library.add_new_books("Two worlds", "In the heaven", "Something for girls", "Catch me", "An exception")
library.add_new_books("Say what?", "Dieting", "Ruby in practice", "Funny book", "Jokes for today")

reader1 = Reader.new("Stanisław Wokulski")
reader2 = Reader.new("Marian Strzecha")

reader1.borrow_books(library, "Two worlds", "Ruby in practice", "Funny book")
reader2.borrow_books(library, "Two worlds", "In the heaven", "Catch me")
reader1.print_borrowed_books
reader2.print_borrowed_books
library.print_books_list
library.take_a_nap

reader1.return_books(library, "Two worlds", "Funny book")
reader2.return_books(library, "In the heaven", "Catch me")
reader1.print_borrowed_books
reader2.print_borrowed_books
library.print_books_list
library.take_a_nap

reader1.print_reader_history
reader2.print_reader_history
