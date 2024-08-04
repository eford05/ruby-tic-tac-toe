module Player
  class Player

    # For some reason attr_reader for :name and :moves does not work

    # Initialize player moves
    def initialize(name, moves)
      @name = name
      @moves = moves
    end

    # Setter and getters for player moves
    def get_moves
      return @moves
    end

    def set_moves(move)
      @moves = @moves.push(move)
    end

    # Getter for player name
    def get_name
      return @name
    end

  # End class
  end
# End module
end