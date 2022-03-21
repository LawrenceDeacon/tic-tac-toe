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

        def make_move
            MakeMove.new
        end

        def self.players
            return @@players
        end
    end

    # Board Class
    class Board
        @@board = []
        def initialize
            @square = ["|"," ","|"].join
            @row = [@square,@square,@square, "\n"].join
            @board = [@row,@row,@row]
            puts @board
        end
    end

    # Move Class
    class MakeMove
        @@moves = []
        attr_reader :show_moves
        def initialize(player, board, row, square)
            @player = player
            @board = board
            @row = row
            @square = square
            @@moves = [@player,@board,@row,@square]
        end

        def show_moves
            p "show_moves"
            return @@moves
        end
    end

end

player = Components::Players
player1 = player.new("Lawrence", "X")
player2 = player.new("Mike", "O")

board = Components::Board.new
move = Components::MakeMove

p player.players

# Move written as move[row,square]
player1.make_move(1,1)
