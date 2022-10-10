class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age
    end
    def bark
        if age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end
    def favorite_foods
        @favorite_foods
    end

    def age=(age)
        @age = age
    end
    def favorite_food?(str)
        favs = @favorite_foods
        favs.map! {|ele| ele.downcase}
        if favs.include?(str.downcase)
            true
        else
            false
        end
    end
end
