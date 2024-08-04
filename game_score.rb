module GameScore
  class Score

        # Check the players moves against the possible win conditions
        
        # Check condition for 3 straight in a row
        # 00, 01, 02,
        # 10, 11, 12,
        # 20, 21, 22,

        # Check condition for 3 straight in a column
        # 00, 10, 20,
        # 01, 11, 21,
        # 02, 12, 22,

        # Check condition for 3 in diagonals
        # 00, 11, 22,
        # 02, 11, 20

    # Check all player's current moves
    def game_win ( player, player_moves )
      has_win = false
      three_in_row = 0
      three_in_column = 0
      three_in_diagonal = 0

      # If the players moves are less than 3 then return false not enough for a win
      if player_moves.length < 3
        return false
      
      else

        for i in 0..2 do
          # Reset rows columns and diagonals every iteration
          three_in_row = 0
          three_in_column = 0
          three_in_diagonal = 0

          for j in 0..2 do
            # Check for rows pattern -> #{i}#{j}
            ( player_moves.include?( "#{i}#{j}" ) ) ? ( three_in_row += 1 ) : ( nil )

            # Check for win
            ( three_in_row == 3 ) ? ( has_win  = true ) : ( nil )

            # Break out for win
            if has_win
              puts "Player #{ player } has three in a row!"
              puts "Player #{ player } wins!!!"
              return has_win
            end

            # Check for columns pattern -> #{j}#{i}
            ( player_moves.include?( "#{j}#{i}") ) ? ( three_in_column += 1 ) : ( nil )

            # Check for win
            ( three_in_column == 3 ) ? ( has_win  = true ) : ( nil )

            # Break out for win
            if has_win
              puts "Player #{ player } has three in a column!"
              puts "Player #{ player } wins!!!"
              return has_win
            end

            # Check for first diagonal pattern -> #{j}#{j}
            ( player_moves.include?( "#{j}#{j}" ) ) ? ( three_in_diagonal += 1) : ( nil )

            # Check for win
            ( three_in_diagonal == 3 ) ? ( has_win = true ) : ( nil )

            # Breat out for win
            if has_win
              puts "Player #{ player } has three in a diagonal!"
              puts "Player #{ player } wins!!!"
              return has_win
            end

            # Check for second diagonal pattern -> #{j}#{2 - j}
            ( player_moves.include?( "#{j}#{(2 - j)}") ) ? ( three_in_diagonal += 1 ) : ( nil )

            # Check for win
            ( three_in_diagonal == 3 ) ? ( has_win = true ) : ( nil )

            # Break out for win
            if has_win
              puts "Player #{ player } has three in a diagonal!"
              puts "Player #{ player } wins!!!"
              return has_win
            end

          end

        end

      end
    
      return has_win

    # End method
    end

  # End class
  end
# End module
end

