def pogonu(z)
    if z<=0 || !z.is_a?(Numeric)
        puts "Введите число!"
        exit
    end
    puts "Вот Ваши звезды!:)"
    z.times do
    print '*'
    end
    return nil
end

puts "Сколько Вам звезд на погоны?"
z=gets.to_i
puts pogonu(z)