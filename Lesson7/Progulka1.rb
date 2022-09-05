choise=nil
until choise==1||choise==2 do
  puts "Вы гуляете в Южном Бутово и к Вам навстречу вышли молодые ребята
1. Вы начинаете убегать
2. Вы стоите на месте"
  choise = gets.to_i
end

if choise == 1
    abort "Ребята догнали Вас и побили"
else 
    choise=nil
    until choise==1||choise==2 do
    puts "Есть прикурить?
    1. Вы прикуриваете
    2. -- не курю"
    choise = gets.to_i
    end
    if choise == 1
        abort "Прикурив ребята уходят"
    else
        abort "Ребята Вас побили"
    end
end