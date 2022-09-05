# encoding: utf-8
#
# Программа, отправляющая почту с помощью гема pony
require 'pony'
require 'io/console'

my_mail ='fillson@ukr.net'

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

#puts 'Кому отправить письмо? Введите адрес:'
#send_to = STDIN.gets.chomp

puts 'Что написать в письме?'
body = STDIN.gets.encode('UTF-8').chomp

# Спросим у пользователя тему письма и сохраним в переменной subject
puts 'Какая будет тема письма?'
subject = STDIN.gets.encode('UTF-8').chomp

begin
  Pony.mail(
    to: 'fillson22051983@gmail.com',#StoreApplication::Admin.email,
    from: my_mail,
    via: :smtp,
    via_options: {
      address: 'smtp.ukr.net',
      tls: true,
      port: '2525',
      user_name: my_mail,
      password: 'zckBcyCMol8mikOT',#password,
      authentication: :plain,
      domain: 'mail.ukr.net'
    },
    subject: subject,
    body: body
  )
puts 'Письмо отправлено!'
rescue Net::SMTPAuthenticationError => error
  puts 'Вы неправильно ввели пароль' + error.message
rescue SocketError
  puts 'Не могу соединиться с сервером'
rescue Net::SMTPSyntaxError => error
  puts "Вы некорректно задали параметры письма: " + error.message
end

#zckBcyCMol8mikOT