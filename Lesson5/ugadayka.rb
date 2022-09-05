m_ch=rand(16)

puts "Введите число от 1 до 10"
ch=gets.to_i

if (ch==m_ch)
    abort "Вы угадали!"
end
    if (ch>m_ch) 
        puts "Меньше"
        if (ch-m_ch)<=2
            puts "Тепло"     
        end
    else
        puts "Больше"
        if (m_ch-ch)<=2
            puts "Тепло"
        end
    end

    puts "Введите число от 1 до 10"
    ch=gets.to_i
    
    if (ch==m_ch)
        abort "Вы угадали!"
    end
        if (ch>m_ch) 
            puts "Меньше"
            if (ch-m_ch)<=2
                puts "Тепло"     
            end
        else
            puts "Больше"
            if (m_ch-ch)<=2
                puts "Тепло"
            end
        end

        puts "Введите число от 1 до 10"
        ch=gets.to_i
        
        if (ch==m_ch)
            abort "Вы угадали!"
        end
            if (ch>m_ch) 
                puts "Меньше"
                if (ch-m_ch)<=2
                    puts "Тепло"     
                end
            else
                puts "Больше"
                if (m_ch-ch)<=2
                    puts "Тепло"
                end
            end

puts "Вы проиграли:("
