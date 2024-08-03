require_relative "game_board"
require_relative "game_score"
require_relative "player"
include GameBoard
include GameScore
include Player

# Helper function to compare coord values
def has_valid_coords( coords )
  has_coords = false

  if ( coords.length != 2 )
    return false
  else
    #Check to see if the Ascii value is in range 
    coords.each_char { | c |
    (48..50).cover?(c.ord) ? has_coords = true : has_coords = false
    if !has_coords
      return false
    end
    }
  end

  return has_coords

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
      #Strip commas and white space replace with empty string
      player_input = gets.gsub(/[, \s]/, "").strip

      # Break condition
      has_coords = has_valid_coords(player_input)

      if has_coords
        puts "Everything good"
      else 
        puts "Redo play"
      end
    
    end

    puts "Broke out of coord loop!"
    
    # Force game over for testing
    game_over = true  
      
  end


# End method
end

play_game
