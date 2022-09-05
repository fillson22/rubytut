#Метод возвращает при введеном радиусе площадь круга
def ploshad(rrr)
    return 3.14 * rrr * rrr
end
puts "Какой радиус круга?"
rr=gets.to_f
puts ploshad(rr)