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
  end
  
end
