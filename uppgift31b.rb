# encoding: utf-8

# Skriv en funktion som läser in par av användarnamn & lösenord från disk. 

# Returnera en uppräkning (array av objekt eller en hash) som innehåller paren.

# Userobjects -> array

class User

	@username
	@password

	def initialize(username, password)
		@username = username
		@password = password

	end

	attr_accessor :username, :password

	def to_s
		"#{username} #{password}."
	end


end

password = File.open("lösenord.txt").readlines
username = File.open("användarnamn.txt").readlines

print username
print password

#user1 = User.new( "Bertil -", "abc123" )
#user2 = User.new( "Sture -", "123abc" )

#puts user1
#puts user2
