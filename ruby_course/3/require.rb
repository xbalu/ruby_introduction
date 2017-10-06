require "open-uri"
# odczytanie kodu html strony
puts open("http://www.ruby-lang.org/").read
