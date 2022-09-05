require 'translit'
puts "Введите текст"
my_text=STDIN.gets.chomp
puts Translit.convert(my_text)