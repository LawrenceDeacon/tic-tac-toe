# Components Module
module Components
    # Players Class
    class Players
        @@players = {}
        attr_accessor :name, :symbol
        def initialize(name, symbol)
            @name = name
            @symbol = symbol   
            @@players[@name] = @symbol
        end
    end

end

player = Components::Players
player1 = player.new("Lawrence", "X")
player2 = player.new("Mike", "O")
