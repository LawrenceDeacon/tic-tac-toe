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

        def update(name, symbol)
            if name != @@players[name] 
                @name = name
                @symbol = symbol   
                @@players[@name] = @symbol
            end     
        end

        def self.players
            return @@players
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
board = Components::Board.new

players = Components::Players
player1 = players.new("Player1", "X")
player2 = players.new("Player2", "O")
# # Player1 setup
# puts "Player 1 enter your name: "
# player1.name = gets 
# puts "Player 1 enter your choice of Symbol: "
# player1.symbol = gets 
# # Player2 setup
# puts "Player 2 enter your name: "
# player2.name = gets 
# puts "Player 2 enter your choice of Symbol: "
# player2.symbol = gets 

# Testing purposes
puts players.players
player1.update("Bob", player1.symbol)
puts players.players