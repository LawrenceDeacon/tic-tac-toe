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

    class Board
        def initialize
            @square = "| |"
            @row = [@square, @square, @square, "\n"].join
            @board = [@row,@row,@row]
            puts @board
        end
    end

end

# Init
player = Components::Players
player1 = player.new("Lawrence", "X")
player2 = player.new("Mike", "O")
board = Components::Board.new