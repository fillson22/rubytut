auto=["Opel","Ford","Toyota","Lada","Chery","Shkoda","VW","Audi","Mersedes","Reno"]
puts "Здравствуйте! У нас есть #{auto.size} машин, назовите номер"
numb=gets.to_i
if numb>9||numb<0
    puts "Нет машины с таким номером"
else
    puts "Вы выбрали машину марки #{auto[numb]}"    
end