require './bridge.rb'
puts "Поехали"
sleep 1
puts "Внезапно появилась река"
sleep 1
bridge=Bridge.new
#Мост построен
sleep 1
if !bridge.is_opened?
    #Мост открыт
    bridge.open
end
puts bridge.is_opened?.to_s