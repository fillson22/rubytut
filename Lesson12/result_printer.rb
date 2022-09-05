# encoding: utf-8

# Класс ResultPrinter занимается выводом на экран состояния и результата игры.
# Логика взята из методов первой версии игры "виселица" (см. исходники прошлых
# уроков)
class ResultPrinter
    # Обратите внимание, что конструктора у класса ResultPrinter нет, т.к. он
    # не хранит внутри себя никакого состояния. Все необходимые данные этому
    # методу будут переданы в качестве параметров.
    #
    # Основной метод, печатающий состояния объекта класса Game, который нужно
    # передать ему в качестве параметра.
    def print_status(game)
      # Перед каждым выводом статуса очищаем экран методом cls (см. ниже)
      cls
  
      # Выводим на экран слово с подчеркиваниями методом get_work_for_print
      puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
  
      # Выводим текущее количество ошибок и все «промахи»
      puts "Ошибки: #{game.bad_letters.join(', ')}"
  
      # Выводим саму виселицу, состояние которой определяется количеством ошибок
      print_viselitsa(game.errors)
  
      if game.status == -1
        # Если статус игры -1 (проигрыш) — выводим загаданное слово и говорим, что
        # пользователь проиграл.
        puts "\nВы проиграли :(\n"
        puts 'Загаданное слово было: ' + game.letters.join('')
        puts
      elsif game.status == 1
        # Если статус игры 1 (выигрыш) — поздравляем пользователя с победой.
        puts "Поздравляем, вы выиграли!\n\n"
      else
        # Если ни то ни другое (статус 0 — игра продолжается), просто выводим
        # текущее количество оставшихся попыток.
        puts 'У вас осталось ошибок: ' + (7 - game.errors).to_s
      end
    end
  
    # Служебный метод класса, возвращающий строку, изображающую загаданное слово
    # с открытыми угаданными буквами (см. подробности в исходниках первой версии
    # игры).
    def get_word_for_print(letters, good_letters)
      result = ''
  
      for item in letters do
        if good_letters.include?(item)
          result += item + ' '
        else
          result += '__ '
        end
      end
  
      return result
    end
  
    # Метод, рисующий виселицу. Ему достаточно знать сколько сделано ошибок,
    # поэтому параметр метода, не весь объект типа Game, а всего лишь число
    # ошибок.
    def print_viselitsa(errors)
      # Оператор case, аналогичен набору if с несколькими ветвями elsif, подробнее
      # как он работает можно посмотреть, например, тут:
      #
      # https://www.tutorialspoint.com/ruby/ruby_if_else.htm
      case errors
      when 0
        puts '
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
      when 1
        puts '
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
      when 2
        puts '
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
      when 3
        puts '
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        '
      when 4
        puts '
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        '
      when 5
        puts '
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        '
  
      when 6
        puts '
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        '
      when 7
        puts '
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        '
      end
    end
  
    def cls
      system('clear') || system('cls')
    end
  end