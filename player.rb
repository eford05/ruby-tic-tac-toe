module Player
  class Player

    @@player_moves = Array.new

    # Push the player's moves to the player moves array
    def move(xy)
      @@player_moves.push("#{xy}")
    
    # End method
    end

    # Getter
    def get_moves
      return @@player_moves
    # End method
    end

  # End class
  end
# End module
end