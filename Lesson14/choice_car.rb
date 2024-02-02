# Выбор машины из массива
# Объявите в программе массив из марок автомобилей (всего около 10). 
# Выведите на экран размер этого массива (но не сам массив) и спросите 
# у пользователя одно число — номер марки автомобиля, который он хочет 
# получить в подарок.

# Выведите ему ту марку автомобиля, номер которой запросил пользователь. 
# А если он запросил номер, которого нет (отрицательное число, ноль или 
# больше, чем есть в массиве) — сообщите ему, что он ошибся.

car_arr = [ 'Lada', 'Toyota', 'Geep', 'BMV', 'Mersedes', 'Audi', 'Kamaz' ]

puts 'Hello, we have 7 car for you. Make you choice(number)'

choice_num = gets.to_i

if choice_num>=1 && choice_num<=7
  puts "Your choice is #{car_arr[choice_num]}"
else
    puts 'Write correct number 1..7'
end
# car_arr.each do |car_num|
#     if car_num.index==choice_num
#         puts "Your choice is #{car_arr(choice_num)}"
#     end
# end