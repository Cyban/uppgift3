# encoding: utf-8

class Articles
  @@previous_id = 0

	def initialize
	@id = unique_id
	end

	def description
	"Articles: #{@id}, object_id #{self.object_id}\n "
	end

	private
	def unique_id
	@@previous_id +=1
	end
end

class Book < Articles 
	attr_accessor :title, :author, :pages

	def initialize( title = "book title", author = "nn", pages = "n")
	@title = title
	@author = author
	@pages = pages
	super() 
	end

	def description
	super + "Book: #{@title} by #{@author} #{@pages} pages long."
	end

end

class AudioBook < Articles 
	attr_accessor :title, :author, :reader, :minutes

	def initialize( title = "book title", author = "nn", reader = "nn", minutes = "n" )
	@title = title
	@author = author
	@reader = reader
	@minutes = minutes
	super() 
	end

	def description
	super + "Audiobook: #{@title} by #{@author} narrated by #{@reader} #{@minutes} minutes running time."
	end

end

book1 = Book.new( "Neuromancer", "William Gibson", "271" )
book2 = Book.new( "Hej", "Sven", "1337" )
book3 = Book.new( "Hello", "Mike", "13" )
abook1 = AudioBook.new( "Suspect", "Robert Crais", "MacLeod Andrews", "510" )
abook2 = AudioBook.new( "Bu", "Steve", "Lauren", "1012" )
abook3 = AudioBook.new( "Fuy", "Robert", "Sophie", "833" )

library = [book1, book2, book3, abook1, abook2, abook3]
library.each do |item|
puts "#{item.class} is an Article: #{item.is_a?(Articles)}"
puts item.description
end


=begin

emailadress = File.open("email.txt").readlines


puts "Logga in användare"
choice = gets.chomp
puts "Lista artiklar i biblioteket"
choice = gets.chomp
puts "Låna (ljud)bok i biblioteket"
choice = gets.chomp
puts "Sök artiklar i biblioteket"
choice = gets.chomp

puts "Skriv in email: "
email = gets.chomp

if email.any? { |e| e.include?(emailadress)}
print "e"
abort

end

puts artiklar

=end
