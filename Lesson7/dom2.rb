puts "Какой длинны будет массив"
dl=gets.to_i
j=0
array=[]
while j<dl do
    array<<rand(100)
    j+=1
end

i=0
for value in array do
    if value>=i
        i=value
    end

end
puts array.to_s
puts "Наибольшее число #{i}"