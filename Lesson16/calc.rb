puts 'Здравствуйте в программе-калькулятор'
sleep 1
puts 'Введите первое число'
num1=gets.chomp.to_i
puts 'Введите второе число'
num2=gets.chomp.to_i
sleep 1
puts 'Какую операцию произвезти с этими числами: + - / * ?'
operation=gets.chomp.to_s
case operation
when '+'
    puts (num1+num2).to_s
when '-'
    puts (num1-num2).to_s
when '/'
begin
    puts (num1/num2).to_s
rescue ZeroDivisionError
    puts 'На ноль делить нельзя!!!'
end
when '*'
    puts (num1*num2).to_s
else 
    puts 'Вы ввели неизвестную операцию'
end