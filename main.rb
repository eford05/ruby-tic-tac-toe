require_relative "game_board"
include GameBoard

# Run Game Logic 
def game_start

  # Instantiate The Board
  board = GameBoard::Board.new

  puts "Directions: Take turns placing a marker on one of the coordinates. The first player to get 3 in a row wins. \n"
  board.preview_board
  puts ""

  board.draw_board

  # Play game until there is a winner or there are no more turns
end

game_start
