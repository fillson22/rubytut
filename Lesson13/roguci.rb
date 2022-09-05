if File.exist?('./data/lob.txt')
    file_lob=File.new('./data/lob.txt','r:UTF-8')
    array1=file_lob.readlines
    file_lob.close
else
    puts "Ошибка поиска файла"
end
if File.exist?('./data/glaza.txt')
    file_glaza=File.new('./data/glaza.txt','r:UTF-8')
    array2=file_glaza.readlines
    file_glaza.close
else
    puts "Ошибка поиска файла"
end
if File.exist?('./data/nos.txt')
    file_nos=File.new('./data/nos.txt','r:UTF-8')
    array3=file_nos.readlines
    file_nos.close
else
    puts "Ошибка поиска файла"
end
if File.exist?('./data/rot.txt')
    file_rot=File.new('./data/rot.txt','r:UTF-8')
    array4=file_rot.readlines
    file_rot.close
else
    puts "Ошибка поиска файла"
end
current_path=File.dirname(__FILE__)
file=Time.now
file_name=file.strftime('face_%H_%M_%Y_%m_%d')
file_final=File.new(current_path+'/'+file_name+'.txt','w')
file_final.puts array1.sample
file_final.puts array2.sample
file_final.puts array3.sample
file_final.puts array4.sample
file_final.close