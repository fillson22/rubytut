require_relative 'film'
array=[]
puts "Творчество какого режисера Вас нравится?"
name_regiser=STDIN.gets.chomp

3.times do
    puts "Какой-нибудь его хороший фильм?"
    name_film=STDIN.gets.chomp
    film=Film_user.new(name_regiser,name_film)
    array<<film.massiv_film
end
i=rand(2)
result=array[i]
puts "Рекомендую фильм #{result[1]}"
puts "Режисера #{result[0]}"