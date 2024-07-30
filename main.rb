# Generate a preview of the game board with coordinates for the player's to choose from
def preview_board
  for i in 0..2
    for j in 0..2
      ( j != 2 ) ? ( print "| #{i}, #{j} " ) : ( print "| #{i}, #{j} | \n" )
    end
  end
end

# Run Game Logic 
def game_start
  puts "Directions: Take turns placing a marker on one of the coordinates. The first player to get 3 in a row wins."
  preview_board
end

game_start