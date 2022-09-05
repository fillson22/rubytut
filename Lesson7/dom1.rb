print "Введите количество цифер "
kol=gets.to_i
i=0
j=0
while i<kol do
    i+=1
    j+=i
    puts j
    sleep 1
end
puts "Сумма #{kol} чисел равна #{j}"