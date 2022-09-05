puts "Введите свой вариант
0 - камень
1 - ножницы
2 - бумага"
c_chel=gets.to_i
c_komp=rand(2)
ar1=["Камень","Ножницы","Бумага"]
puts "Ваш вариант        #{ar1[c_chel]}"
puts "Вариант компьютера #{ar1[c_komp]}"
puts (komb=c_chel.to_s+c_komp.to_s)
pobeda_chel=["01","12","20"]
pobeda_komp=["02","10","21"]
nichiy=["00","11","22"]
if nichiy.include?(komb)
    puts "Ничья"
elsif 
    pobeda_chel.include?(komb)
    puts "Вы победили"
else
    pobeda_komp.include?(komb)
    puts "Победа компьютера"
end