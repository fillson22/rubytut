array=[1,2,3,4,5,6,7]
array1=[]
dl=array.size-1
while dl!=-1 do
    array1<<array[dl]
    dl-=1
end
puts array.to_s
puts array1.to_s