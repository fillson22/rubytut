def proba(m_ch,ch)
    if (ch==m_ch)
        abort "Вы угадали!"
    elsif (ch-m_ch).abs==2
        puts "Тепло"
    end
end
m_ch=rand(10)
3.times do
    puts "Введите число от 1 до 10"
    ch=gets.to_i
    proba(m_ch,ch)
end
puts "Вы проиграли:("
