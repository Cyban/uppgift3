# encoding: utf-8

class Artikel
@@previous_id = 0
def initialize
@id = bok_nummer
end
def beskrivning
"Artikel: #{@id}, object_id #{self.object_id}\n "
end
private
def bok_nummer
@@previous_id +=1
end
end
class Bok < Artikel
attr_accessor :titel, :författare
def initialize(titel = "bok titel", författare = "nn")
@titel = titel
@författare = författare
super()
end
def beskrivning
super + "Bok: #{@titel} av #{@författare}"
end
end
class Ljudbok < Artikel
attr_accessor :titel, :författare
def initialize( titel = "bok titel", författare = "nn" )
@titel = titel
@författare = författare
super()
end
def beskrivning
super + "Ljudbok: #{@titel} av #{@författare}"
end
end

puts "Välkommen"
puts "Skriv 'artiklar' för att se en lista på alla artiklar i biblioteket."
puts "Skriv 'låna' för att låna en bok eller ljudbok."
meny = gets.chomp.downcase
case meny
	when 'artiklar'
		title = gets.chomp
	else
		puts "Skriv 'artiklar' eller 'låna'."
end

bok1 = Bok.new( "Silmarillion", "J.R.R Tolkien" )
bok2 = Bok.new( "Across the Nightingale Floor", "Lian Hearn" )
bok3 = Bok.new( "Brisingr", "Christopher Paolini" )
ljudbok1 = Ljudbok.new( "A Dance With Dragons", "G.R.R Martin" )
ljudbok2 = Ljudbok.new( "Inheritance", "Christopher Paolini" )
ljudbok3 = Ljudbok.new( "Brilliance of the Moon", "Lian Hearn" )
bibliotek = [bok1, bok2, bok3, ljudbok1, ljudbok2, ljudbok3]
bibliotek.each do |item|


=begin
when 'låna'
	title = gets.chomp
else puts "Skriv 'artiklar' eller 'låna'."
end
=end

puts item.beskrivning
end

puts "Mata in din epost: "
epost = gets.chomp
if(epost.include? "@")
puts "Epost godkänd"
else
puts "Ej epost"
abort
end
puts "Välj artikel: "
val = gets.chomp
if val == "1"
print "Silmarillion är nu utlånad."
elsif val == "2"
print "Across the Nigtingale Floor är nu utlånad."
elsif val == "3"
print "Brisingr är nu utlånad."
elsif val == "4"
print "A Dance With Dragons är nu utlånad."
elsif val == "5"
print "Inheritance är nu utlånad."
elsif val == "6"
print "Brilliance of the Moon är nu utlånad."
else
print "Denna artikel finns inte."
end
