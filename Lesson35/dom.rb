#Метод возвращает при введеном радиусе площадь круга
def ploshad(rr)
    return 3.14 * rr**2
end
print "Какой радиус круга? "
rr=gets.to_f
puts "Площадь круга равна: #{ploshad(rr)}"