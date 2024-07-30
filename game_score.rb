module GameScore
  class Score
    @@possible_moves = [ ["00", "01", "02"], ["10", "11", "12"], ["20", "21", "22"], ["00", "10", "20"], ["01","11", "21"], ["02", "12", "22"], ["00", "11", "22"], ["20", "11", "02"]]

    # Check all player's current moves
    def game_win ( moves )

      # If the players moves are less than 3 then return false not enough for a win
      if moves.length < 3
        return false
      
      else

        # Check the players moves against the possible win conditions
        @@possible_moves.each do | move |
          return ( moves.flatten == move.flatten ) ? ( true ) : ( false )

        end

      end
    
    # End method
    end

  # End class
  end
# End module
end