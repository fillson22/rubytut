array=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts "Вот такая палка колбасы у нас есть"
puts array.to_s
def otrez(number, array)
    if number <= array.size
        array.pop(array.size-number)
    end
    return array.to_s
end

puts "Сколько Вам отрезать?"
number=gets.to_i
puts otrez(number, array)