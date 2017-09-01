$LOAD_PATH << '.'
require 'stringsort'

puts "Enter the string : "
string_to_sort = gets.chomp

mostCharFirstObj = CharStringSort. new
puts mostCharFirstObj.mostCharFirst string_to_sort
