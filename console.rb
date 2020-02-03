require 'pry'
require_relative './book'
require_relative './author'

binding.pry


a1 = Author.new("Ramzy")
a2 = Author.new("Leon")
a3 = Author.new("Yoan")

b1 = Book.new(a1, "heyyyy", 500)
b2 = Book.new(a1, "iphone", 900)
b3 = Book.new(a2, "BS", 500)
binding.pry