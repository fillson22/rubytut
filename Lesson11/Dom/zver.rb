require "./hameleon.rb"

#puts "Привет я Хамелеон и я белый ;))"
hameleon=Hameleon.new
sleep 1
puts "Какого цвета твоя рубашка?"
color=gets.to_s
sleep 1

hameleon.color(color)
sleep 1
puts "Давай играть"