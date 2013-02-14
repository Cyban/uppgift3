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
bok = Bok.new( "Silmarillion", "J.R.R Tolkien")
ljudbok = Ljudbok.new( "A Dance With Dragons", "G.R.R Martin")
bibliotek = [bok, ljudbok]
bibliotek.each do |item|

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
val_1 = gets.chomp
if val_1 == "1"
print "Silmarillion är nu utlånad."
elsif val_1 == "2"
print "A dance with dragons är nu utlånad."
else
print "Denna artikel finns inte."
end
