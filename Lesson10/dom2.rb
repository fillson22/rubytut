def pogonu(z)
    if z<=0 || !z.is_a?(Numeric)
        puts "Введите что-то нормальное"
        exit
    end
    i=0
    while i!=z do
        print "*"
        z-=1      
    end
end

puts "Сколько Вам звезд на погоны?"
j=gets.to_i
puts pogonu(j)
puts "Вот Ваши звезды!:)"