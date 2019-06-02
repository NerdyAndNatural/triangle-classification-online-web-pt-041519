class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

    def kind
      low, mid, max = [@length1, @length2, @length3].sort
      if  low + mid <= max
        raise TriangleError
      elsif low == 0 || mid == 0 || max == 0
        raise TriangleError
      end

      if @length1 == @length2 && @length2 == length3
        :equilateral
      elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        :isosceles
      else
        :scalene
      end
    end

    class TriangleError < RangeError
    end

end