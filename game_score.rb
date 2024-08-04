module GameScore
  class Score

        # Check the players moves against the possible win conditions
        
        # Check condition for 3 straight in a row -> 9 possible values
        # 00, #01, #02,
        # 10, #11, #12,
        # 20, #21, #22,

        # Check condition for 3 straight in a column -> 9 possible values
        #00, #10, #20,
        #01, #11, #21,
        #02, #12, #22,

    # Check all player's current moves
    def game_win ( player_moves )
      has_win = false
      three_in_row = 0
      three_in_column = 0
      three_in_diagonal = 0

      # If the players moves are less than 3 then return false not enough for a win
      if player_moves.length < 3
        return false
      
      else

        for i in 0..2 do
          # Reset rows on columns every iteration
          three_in_row = 0
          three_in_column = 0

          for j in 0..2 do
            # Check for rows pattern -> #{i}#{j}
            ( player_moves.include?( "#{i}#{j}" ) ) ? ( three_in_row += 1 ) : ( nil )

            # Test
            puts "Row does player include #{i}#{j} #{player_moves.include?("#{i}#{j}")}"

            ( three_in_row == 3 ) ? ( puts "Three in a row" ) : ( nil )

            # break condition for rows
            ( three_in_row == 3 ) ? ( return true ) : ( nil )

            # Check for columns pattern -> #{j}#{i}
            ( player_moves.include?( "#{j}#{i}") ) ? ( three_in_column += 1 ) : ( nil )

            # Test
            puts "Column does player include #{j}#{i} #{player_moves.include?("#{j}#{i}")}"

            ( three_in_column == 3 ) ? ( puts "Three in a column" ) : ( nil )

            #break condition for column
            ( three_in_column == 3 ) ? ( return true ) : ( nil )

          end
        end

        # Check for 3 straight in a diagonal

      end
    
    # End method
    end

  # End class
  end
# End module
end

