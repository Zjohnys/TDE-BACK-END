class Triangle
    attr_reader :triangle
    def initialize(triangle)
      @triangle = triangle
    end
    def equilateral?
      (triangle.uniq.length == 1) && (triangle.uniq.first != 0)
    end
    def isosceles?
      inequal? && (triangle.tally.each_value.to_a.max >= 2)
    end
    def scalene?
      inequal? && (triangle.tally.each_value.to_a.max == 1)
    end
  end