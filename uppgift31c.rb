# encoding: utf-8

puts "Skriv in användarnamn: "
användarnamn = gets.chomp

puts "Skriv in lösenord: "
lösenord = gets.chomp

File.open("lösenord.txt")
File.open("användarnamn.txt")

=begin

compare 

if lösenord.txt = lösenord
  användarnamn.txt = användarnamn
	true
else
	false 

=end
