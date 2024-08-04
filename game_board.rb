module GameBoard
  class Board

    @@board = Hash.new

    # Constructor 
    def initialize()
      # Generating the board as a new obj from the class
        for i in 0..2
          for j in 0..2
            @@board["#{i}#{j}"] = nil
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

    # End method
    end

    # Set the game board with coordinates for player choices (Setter)
    def set_game_piece ( player, xy )
      piece_set = false

      # Player 1
      if player == 1
        # If there is an empty space on the board set the game piece else do nothing
        ( @@board["#{xy}"] == nil ) ? piece_set = true : nil
        ( @@board["#{xy}"] == nil ) ? ( @@board["#{xy}"] = "X" ) : nil
        
      # Player 2
      else
        # If there is an empty space on the board set the game piece else do nothing
        ( @@board["#{xy}"] == nil ) ? piece_set = true : nil
        ( @@board["#{xy}"] == nil ) ? ( @@board["#{xy}"] = "O" ) : nil

      end

      return piece_set
    # End method
    end

    # Draw the Game board
    def draw_board 
      for i in 0..2
        for j in 0..2
          if j != 2
            ( @@board["#{i}#{j}"] == nil ) ? ( print "|   " ) : ( print "| #{@@board["#{i}#{j}"]} ")
          else
            ( @@board["#{i}#{j}"] == nil ) ? ( print "|   | \n" ) : ( print "| #{@@board["#{i}#{j}"]} | \n")
          end
        end
      end

    # End method
    end 

    def get_board 
      return @@board
    end
  
  # End class
  end
# End module 
end
