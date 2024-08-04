module GameScore
  class Score

    # Check all player's current moves
    def game_win ( player_moves )

      # If the players moves are less than 3 then return false not enough for a win
      if player_moves.length < 3
        return false
      
      else

        # Check the players moves against the possible win conditions
        
        # Check condition for 3 straight in a row -> 9 possible values
        # 00, #01, #02
        # 10, #11, #12
        # 20, #21, #22

        # Check condition for 3 straight in a column -> 9 possible values
        #00, #10, #20
        #10, #11, #12
        #20, #21, #22

        # Check for 3 straight in a diagonal

      end
    
    # End method
    end

  # End class
  end
# End module
end

