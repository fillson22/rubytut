require_relative 'bodi'
b1=Bodibilder.new
b2=Bodibilder.new
b3=Bodibilder.new

3.times do
    b1.training('triceps')
end
puts "Первый бодибилдер"
puts b1.view_bodi
puts "Второй бодибилдер"
puts b2.view_bodi
puts "Третий бодибилдер"
puts b3.view_bodi