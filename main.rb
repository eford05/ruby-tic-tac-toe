require_relative "game_board"
include GameBoard

# Run Game Logic 
def game_start
  puts "Directions: Take turns placing a marker on one of the coordinates. The first player to get 3 in a row wins."
  preview_board

  # Play game until there is a winner or there are no more turns
end

puts GameBoard::MESSAGE