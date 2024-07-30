module GameBoard
  MESSAGE = "Game Board!"
end


# Generate a preview of the game board with coordinates for the player's to choose from
def preview_board
  for i in 0..2
    for j in 0..2
      ( j != 2 ) ? ( print "| #{i}, #{j} " ) : ( print "| #{i}, #{j} | \n" )
    end
  end
end

# Test draw board with coordinates for choices
# Will need to change logic so that it takes an array or hash of the players coordinates
def draw_board ( player, x, y )
  for i in 0..2
    for j in 0..2

      # Draw board for player 1 game board
      if player == 1
        if j != 2
          ( i == x && j == y ) ? ( print "| X " ) : ( print "|   " )
        else
          ( i == x && j == y ) ? ( print "| X |" ) : ( print "|   | \n" )
        end

      # Draw board for player 2 game board
      else
        if j != 2
          ( i == x && j == y ) ? ( print "| O " ) : ( print "|   " )
        else
          ( i == x && j == y ) ? ( print "| O |" ) : ( print "|   | \n" )
        end

      end

    end

  end

  #end method
end

