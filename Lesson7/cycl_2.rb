eggs = [0,9,0,9,0,0,9,0,9,9,9,9,9]
good_eggs = []
broken_eggs = 0
for item in eggs do
    if item!=0
        broken_eggs+=1
    else 
        good_eggs << item
    end
end
puts eggs.to_s
puts broken_eggs.to_s
puts good_eggs.to_s