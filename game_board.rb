module GameBoard
  class Board
    def initialize
      
    end
  
      # Generate a preview of the game board with coordinates for the player's to choose from
      def preview_board
        for i in 0..2
          for j in 0..2
            ( j != 2 ) ? ( print "| #{i}, #{j} " ) : ( print "| #{i}, #{j} | \n" )
          end
        end
      end

      # Generate a hash of values for the board every new game
      def generate_board
        board = Hash.new
        for i in 0..2
          for j in 0..2
            board["#{i}#{j}"] = nil
          end
        end

        return board
      end

  
  # End class
  end
# End module 
end
