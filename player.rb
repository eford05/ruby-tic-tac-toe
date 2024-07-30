module Player
  class Player

    attr_reader :player_moves

    @@player_moves = Array.new

    # Push the player's moves to the player moves array
    def move (x, y)
      player_moves.push("#{x}#{y}")
    
    # End method
    end

  # End class
  end
# End module
end