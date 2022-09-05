class Bridge
    def initialize
        puts "Мост создан"
        @opened=false
    end
    def open
        puts "Мост открыт, поехали дальше"
        @opened=true
    end
    def is_opened?
        return @opened
    end
end