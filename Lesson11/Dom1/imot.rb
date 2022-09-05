class Chelovek
    def initialize(f_name,l_name, y_old)
        @first_name=f_name
        @last_name=l_name
        @years_old=y_old
    end
    def y_old
        if @years_old<60
            puts @first_name
            puts "И ему #{@years_old} - он Молодой"
        else
            puts "#{@first_name} #{@last_name}"
            puts "И ему #{@years_old} - он Пожилой"
        end
    end
end