# Камень — Ножницы — Бумага
# Над этой задачей нужно будет 
# немного потрудиться, но не спешите.

# Напишите игру "камень - ножницы - бумага". 
# Пользователь вводит свой вариант в консоли 
# и играет против компьютера. И видит результат игры. 
# Компьютер должен выбирать случайный вариант.
loop do
    puts 'Введите 0-камень 1-ножницы 2-бумага | 9-exit'
    my_choice = gets.to_s.chomp
    case my_choice
    when '0'
        puts 'Вы поставили камень'
    when '1'
        puts 'Вы поставили ножницы'
    when '2'
        puts 'Вы поставили бумагу'
    when '9'
        puts 'The end'
        break
    else
        puts '!!!Введите нужный вариант!!!'
    end
        
    ai_choice = rand(0..2).to_s
    case ai_choice
    when '0'
        puts 'Комп поставил камень'
    when '1'
        puts 'Комп поставил ножницы'
    when '2'
        puts 'Комп поставил бумагу'
    end

    rezult = my_choice << ai_choice
    
    arr_win_ai = [ '02', '10', '21' ]
    arr_no_win = [ '00', '11', '22' ]
    arr_i_win = [ '01', '20', '12']

    arr_win_ai.each do |i|
        if i == rezult
            puts 'Комп выиграл'
        end
    end
    arr_no_win.each do |i|
        if i == rezult
            puts 'Ничья'
        end
    end
    arr_i_win.each do |i|
        if i == rezult
            puts 'Вы выиграли'
        end
    end
puts '-------------------------------------'
end


