puts 'Сегодня Вам предлагается к просмотру фильм:'
current_path = File.dirname(__FILE__)
file_path = current_path + '/film.txt'

if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  name=[]
  opis=[]
  lines.each_with_index{|e,i| name<<e if i%2 != 0}
  lines.each_with_index{|e,i| opis<<e if i%2 == 0}
  f.close
  i=name.sample
  puts opis[name.index(i)]
  puts i
else
  puts 'Файл не найден'
end