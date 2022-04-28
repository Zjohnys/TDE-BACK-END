class Matrix
    attr_reader :rows, :columns
    def initialize(rep)
      @rows = rep.each_line.map { |x| x.split.map(&:to_i) }
      @columns = @rows.transpose
    end
  end
  