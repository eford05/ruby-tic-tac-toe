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
    (48..50).cover?(c.ord) ? has_coords = true : has_coords = false
    if !has_coords
      
      # break out of loop send warning
      puts "Please enter valid coordinates for x and y values of (0 - 2)"
      return false
    end
    }

    #One more check to see if the coordinates have already been placed on the board
    ( board.get_board["#{coords}"] != nil ) ? has_coords = false : has_coords = true

    if !has_coords
      print "Coordinates #{coords} have already been placed by "
      (board.get_board["#{coords}"] == "X") ? (puts "player 1") : (puts "player 2")
      puts "Please enter coordinates that have not already been taken."
    end
  end

  return has_coords

# End method
end

# Helper method to get each players input until they have valid coords
def get_player_input(player, board)
  player_input = ""
  has_coords = false

  # Keep getting player's coordinates until they pass in a valid coordinates
  while ( !has_coords ) do
    print "Player #{player} what's your move? "
    #Strip commas and white space replace with empty string
    player_input = gets.gsub(/[, \s]/, "").strip

    # Break condition has valid coords
    has_coords = has_valid_coords(player_input, board) 
  
  # End while
  end
  
  return player_input

#End method
end

# Run Game Logic 
def play_game
  score = GameScore::Score.new
  game_over = false
  counter = 9

  # Instantiate The Board
  board = GameBoard::Board.new
  win = GameScore::Score.new
  player_one = Player::Player.new
  player_two = Player::Player.new

  puts "Directions: Take turns placing a marker on one of the empty coordinates. The first player to get 3 in a row wins. \n"
  board.preview_board
  puts ""

  board.draw_board
  
  # Play game until there is a winner or there are no more turns
  while ( !game_over || counter == 0 ) do
    has_coords = false    

    #Get player input for player 1
    player1_input = get_player_input(1, board)
    #Set player move
    player_one.move("#{player1_input}")

    #Set the piece to the board
    board.set_game_piece(1, player1_input)

    #Check for player 1 win
    # game_over = score.game_win(1, player_one.get_moves)

    # Test Player Moves array
    puts "Player one moves class #{player_one.get_moves.class}"
    puts "Player one array: #{player_one.get_moves}"

    # Count down
    counter -= 1

    #Get player input for player 2
    player2_input = get_player_input(2, board)
    #Set player move
    player_two.move("#{player2_input}")

    #Set the piece to the board
    board.set_game_piece(2, player2_input)

    #Check for player 2 win
    # game_over = score.game_win(1, player_one.get_moves)

    # Test Player Moves array
    puts "Player one moves class #{player_two.get_moves.class}"
    puts "Player one array: #{player_two.get_moves}"

    # Test Players moves array
    puts "Players arrays: P1: #{player_one.get_moves}, P2: #{player_two.get_moves}"

    # Count down 
    counter -= 1

    # End game bust
    if ( counter == 0 ) && ( !game_over )
      puts "Bust! No more moves!"
    end

    # Force game end
    game_over = true
      
  end

# End method
end

play_game
