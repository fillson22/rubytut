array=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts "Вот такая палка колбасы у нас есть"
puts array.to_s
def otrez(number)
    array1=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    array1.pop(number)
    return array1.to_s
end

puts "Сколько Вам отрезать?"
uss=gets.to_i
puts otrez(uss)