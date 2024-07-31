require_relative "game_board"
require_relative "game_score"
require_relative "player"
include GameBoard
include GameScore
include Player

# Helper Function to check if player entered coordinates
def input_valid_coords (input)
  has_coords = false
  # If the string is less or more than 2 characters for coordinates return false
  if ( input.length != 2 ) 
    return false
  end
  
  # Loop over the character check if the class is a number and in the range 0 to 3
  input.each_char { | c | 
    puts "Character #{c} : #{ ( (0..2).include?(c.to_i) )} "

  }

# End method
end

# Run Game Logic 
def play_game
  game_over = false
  counter = 9

  # Instantiate The Board
  board = GameBoard::Board.new
  win = GameScore::Score.new
  player_one = Player::Player.new

  puts "Directions: Take turns placing a marker on one of the coordinates. The first player to get 3 in a row wins. \n"
  board.preview_board
  puts ""

  board.draw_board
  
  # Play game until there is a winner or there are no more turns
  while ( !game_over || counter == 0 ) do
    player_input = ""
    has_coords = false    

    # Keep getting player's coordinates until they pass in a valid coordinates
    while ( !has_coords ) do
      print "Player 1 what's your move? "
      player_input = gets.gsub(/[, \s]/, "").strip

      input_valid_coords(player_input)
      # Break condition
      has_coords = true
    
    end

    puts "Broke out of coord loop!"
    
    # Force game over for testing
    game_over = true  
      
  end


# End method
end

play_game
