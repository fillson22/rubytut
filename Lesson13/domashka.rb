if File.exist?('./data/file.txt')
    file=File.new('./data/file.txt','r:UTF-8')
    lines=file.readlines
    i=0
    j=0
    for items in lines do
        if items.size==1
            j+=1
        end
        i+=1
    end
else
    puts "Файл не найден или не существует"
end
puts "Всего строк в файле: #{i}"
puts "Из них пустых: #{j}"
    puts lines[i-5..i-1]
file.close