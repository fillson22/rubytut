class Bodibilder
    def initialize
        @triceps=0
        @biceps=0
        @grydina=0
    end
    def training(muscle)
        case muscle
        when 'triceps'
            @triceps+=1
        when 'biceps'
            @biceps+=1
        when 'grydina'
            @grydina+=1            
        end
    end
    def view_bodi
        #return @triceps,@biceps,@grydina,@nogi
        puts "Трицепс: #{@triceps}"
        puts " Бицепс: #{@biceps}"
        puts "Грудина: #{@grydina}"
    end

end