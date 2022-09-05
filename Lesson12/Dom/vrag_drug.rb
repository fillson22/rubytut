puts "Врага какого героя вы хотите узнать?"
her=STDIN.gets.chomp # gets.to_s
case her
when 'Буратино'
    puts 'Карабас'
when 'Фродо'
    puts 'Саурон'
else
    puts "У него нет врагов))))"
end