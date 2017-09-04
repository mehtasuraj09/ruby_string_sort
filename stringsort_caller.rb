$LOAD_PATH << '.'
require 'stringsort'

puts "Enter the string : "
string_to_sort = gets.chomp

mostCharFirstObj = CharStringSort. new
puts mostCharFirstObj.mostCharFirst string_to_sort

# following is the new optimized method's call
puts mostCharFirstObj.mostCharFirst2 string_to_sort
