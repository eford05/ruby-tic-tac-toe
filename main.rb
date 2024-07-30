require_relative "game_board"
require_relative "game_score"
include GameBoard
include GameScore

# Run Game Logic 
def play_game

  # Instantiate The Board
  board = GameBoard::Board.new
  win = GameScore::Score.new

  puts "Directions: Take turns placing a marker on one of the coordinates. The first player to get 3 in a row wins. \n"
  board.preview_board
  puts ""

  board.draw_board

  # Play game until there is a winner or there are no more turns

  arr = ["00", "01", "02"]
  # Test game win

  win.game_win( arr )
end

play_game
