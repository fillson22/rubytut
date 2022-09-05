puts "Какая у Вас валюта на руках?
    1. Доллары
    2. Рубли"

choise = gets.chomp

if choise == "1"
    puts "Сколько сейчас стоит один доллар?"
    kurs = gets.to_f
    puts "Сколько у Вас долларов?"
    dol = gets.to_f
    puts "Ваши запасы, #{dol*kurs}Rub"
else 
    puts "Сколько сейчас стоит один доллар?"
    kurs = gets.to_f
    puts "Сколько у Вас рублей?"
    rub = gets.to_f
    puts "Ваши запасы, #{rub/kurs}$"
end