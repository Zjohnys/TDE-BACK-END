class Board
    attr_reader :board, :rows, :cols
    def initialize(input)
      @board = input.map(&:strip).map(&:split)
      @rows  = board.length
      @cols  = board.first.length
    end
    def winner
      winner?("X") || winner?("O") || ""
    end
end