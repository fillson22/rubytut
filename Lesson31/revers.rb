# Напишите программу, которая перевернет порядок элементов любого исходного массива. 
# Переверните массив сами с помощью цикла.
# Не используя встроенные методы reverse или reverse!

arr = [ 1, 2, 3, 4, 5, 6, 56 ]
print arr
j, num_end, num_start = 0, 0, 0
i = -1
while arr[j] != arr[i]
  num_end = arr[i]
  num_start = arr[j]
  arr[j] = num_end
  arr[i] = num_start
  j += 1
  i -= 1
end
puts
print arr
puts