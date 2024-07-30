module GameBoard
  class Board

    # Constructor 
    def initialize(board)
      @board = board

      # Generating the board as a new obj from the class
      @board = Hash.new
        for i in 0..2
          for j in 0..2
            @board["#{i}#{j}"] = nil
          end
        end
    
    # End Constructor
    end
  
    # Generate a preview of the game board with coordinates for the player's to choose from
    def preview_board
      for i in 0..2
        for j in 0..2
          ( j != 2 ) ? ( print "| #{i}, #{j} " ) : ( print "| #{i}, #{j} | \n" )
        end
      end

    # end method
    end

    # Set the game board with coordinates for player choices (Setter)
    def set_game_piece ( player, x, y )
      piece_set = false

      # Player 1
      if player == 1
        # If there is an empty space on the board set the game piece else do nothing
        ( @board["#{x}#{y}"] == nil ) ? piece_set = true : nil
        ( @board["#{x}#{y}"] == nil ) ? ( @board["#{x}#{y}"] = "X" ) : nil
        
      # Player 2
      else
        # If there is an empty space on the board set the game piece else do nothing
        ( @board["#{x}#{y}"] == nil ) ? piece_set = true : nil
        ( @board["#{x}#{y}"] == nil ) ? ( @board["#{x}#{y}"] = "O" ) : nil

      end

      return piece_set
    # end method
    end

    # Draw the Game board (Getter)
    def draw_board 
      for i in 0..2
        for j in 0..2
          if j != 2
            ( @board["#{i}#{j}"] == nil ) ? ( print "|   " ) : ( print "| #{@board["#{i}#{j}"]} ")
          else
            ( @board["#{i}#{j}"] == nil ) ? ( print "|   | \n" ) : ( print "| #{@board["#{i}#{j}"]} |")
          end
        end
      end

    # end method
    end 
  
  # End class
  end
# End module 
end
