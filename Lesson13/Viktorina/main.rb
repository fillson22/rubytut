if File.exist?('./data/qwestion.txt')&&File.exist?('./data/answer.txt')
    sod_file1=File.new('./data/qwestion.txt','r:UTF-8')
    sod_file2=File.new('./data/answer.txt','r:UTF-8')
    i=sod_file1.readlines
    j=sod_file2.readlines
else
    puts "Файл не найден" 
end
k=0
k1=0
puts "Приветствуем Вас на нашей Викторине"
puts "Ответьте на наши вопросы"
puts i[0]
i1=gets
if i1==j[0]
    puts "Верно!"
    k+=1
else
    puts "Неправильно. Ответ #{j[0]}"

end
puts i[1]
i1=gets
if i1==j[1]
    puts "Верно!"
    k+=1
else
    puts "Неправильно. Ответ #{j[1]}"
end

puts i[2]

i1=gets.chomp

puts j[2].class    

if i1==j[2]
    puts "Верно!"
    k+=1
else
    puts "Неправильно. Ответ #{j[2]}"
end

puts "У Вас #{k}, правильных ответов из 3"