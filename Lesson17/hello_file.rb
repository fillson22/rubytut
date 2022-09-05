current_path=File.dirname(__FILE__)
file=File.new(current_path+'/'+'hello.txt','a')
file.print('Hello, file')
file.close
puts "File create and text is done"