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

        def self.update(name, symbol)
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

    class move
        @@moves = {}
        def initialize(player,square)
            @player = player
            @square = square
        end
    end
end

# Init
board = Components::Board.new

players = Components::Players
# # Player1 setup
# puts "Player 1 enter your name: "
# player1_name = gets.chomp 
# puts "Player 1 enter your choice of Symbol: "
# player1_symbol = gets.chomp 
# player1 = players.new(player1_name,player1_symbol)
# # Player2 setup
# puts "Player 2 enter your name: "
# player2_name = gets.chomp
# puts "Player 2 enter your choice of Symbol: "
# player2_symbol = gets.chomp
# player2 = players.new(player2_name,player2_symbol)
# #Updates players

# Testing purposes
player1 = players.new("Lawrence","X")
player2 = players.new("Lisa","O")

puts players.players