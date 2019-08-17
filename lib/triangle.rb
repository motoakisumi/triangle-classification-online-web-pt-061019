class Triangle
  # write code here
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind

    if (@s1 + @s2) <= @s3 || (@s1 + @s3) <= @s2 || (@s2 + @s3) <= @s1 || @s1 == 0 || @s2 ==0 || @s3 == 0
      raise TriangleError
    else
      if @s1 == @s2 && @s2== @s3
        return :equilateral
      elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
        return :isosceles
      elsif @s1 != @s2 && @s1 != @s3 && @s2 != @s3
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
