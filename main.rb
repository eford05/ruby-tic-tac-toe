require_relative "game_board"
require_relative "game_score"
require_relative "player"
include GameBoard
include GameScore
include Player

# Helper function to compare coord values
def has_valid_coords( coords, board )
  has_coords = false

  if ( coords.length != 2 )
    return false
  else
    #Check to see if the Ascii value is in range 
    coords.each_char { | c |
    ( 48..50 ).cover?( c.ord ) ? has_coords = true : has_coords = false
    if !has_coords
      
      # break out of loop send warning
      puts "Please enter valid coordinates for x and y values of (0 - 2)"
      return false
    end
    }

    #One more check to see if the coordinates have already been placed on the board
    ( board.get_board[ "#{coords}" ] != nil ) ? has_coords = false : has_coords = true

    if !has_coords
      print "Coordinates #{coords} have already been placed by "
      ( board.get_board["#{coords}"] == "X" ) ? ( puts "player 1" ) : ( puts "player 2" )
      puts "Please enter coordinates that have not already been taken."
    end
  end

  return has_coords

# End method
end

# Helper method to get each players input until they have valid coords
def get_player_input( player, board )
  player_input = ""
  has_coords = false

  # Keep getting player's coordinates until they pass in a valid coordinates
  while ( !has_coords ) do
    print "Player #{ player } what's your move? "
    #Strip commas and white space replace with empty string
    player_input = gets.gsub( /[, \s]/, "" ).strip

    # Break condition has valid coords
    has_coords = has_valid_coords( player_input, board ) 
  
  # End while
  end
  
  return player_input

#End method
end

# Helper method to handle player turns
def player_turns(player, board, score)
  player_wins = false

  # Get player input
  player_input = get_player_input(player.get_name, board)
  # Set player move
  player.set_moves("#{player_input}")

  # Set the piece to the board
  board.set_game_piece(player.get_name, player_input)

  # Check for player win
  player_wins = score.game_win(player.get_name, player.get_moves)

  return player_wins

# End method
end

# Run Game Logic 
def play_game
  game_over = false
  counter = 9

  # Instantiate the board, score, players
  board = GameBoard::Board.new
  score = GameScore::Score.new
  player_one = Player::Player.new(1, [])
  player_two = Player::Player.new(2, [])

  puts "Directions: Take turns placing a marker on one of the empty coordinates. The first player to get 3 in a row wins. \n"
  board.preview_board
  puts ""

  board.draw_board
  
  # Play game until there is a winner or there are no more turns
  while ( counter > 0 ) do  

    # Player 1 turns
    game_over = player_turns(player_one, board, score)

    # Game does not end on game break even though condition met so extra measure
    (game_over) ? break : board.draw_board

    # Count down
    counter -= 1

    # Player 2 turns
    game_over = player_turns(player_two, board, score)

    # Game does not end on game break even though condition met so extra measure
    (game_over) ? break : board.draw_board

    # Count down 
    counter -= 1

    # End game bust
    if ( counter == 0 ) && ( !game_over )
      puts "Bust! No more moves!"
    end
      
  end

# End method
end

play_game
