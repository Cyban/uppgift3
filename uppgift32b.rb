# encoding: utf-8

#
# Exempel på arv
#

class LibraryItem
	@@previous_id = 0

	def initialize
	@id = unique_id
	end

	def description
	"LibraryItem: #{@id}, object_id #{self.object_id}\n "
	end

	private
	# genererar unika id:n för instanser av klasser som ärver från LibraryItem
	def unique_id
	@@previous_id +=1
	end
end

class Book < LibraryItem # vi ärver från klassen LibraryItem
	attr_accessor :title, :author, :pages

	def initialize( title = "book title", author = "nn", pages = "n")
	@title = title
	@author = author
	@pages = pages
	super() # anropa initialize i LibraryItem utan argument
	end

	def description
	super + "Book: #{@title} by #{@author} #{@pages} pages long."
	end

end

class Film < LibraryItem
	attr_accessor :title, :director, :minutes

	def initialize( title = "film title", director = "nn", minutes = "n" )
	@title = title
	@director = director
	@minutes = minutes
	super()
	end

	def description
	super + "Film: #{@title} by #{@director} #{@minutes} minutes running time."
	end
	
end

book = Book.new( "Neuromancer", "William Gibson", "271" )
film = Film.new( "Aliens", "James Cameron", "137" )

library = [book, film]
library.each do |item|
puts "#{item.class} is a LibraryItem: #{item.is_a?(LibraryItem)}"
puts item.description
end
