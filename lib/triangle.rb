class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(triangle)
    triangle.each{|key, value| self.send("#{key}=", value)}
    if s1 + s2 < s3 || s1 + s3 < s2 || s2 + s3 < s1 || s1 + s2 + s3 == 0
      raise TriangleError
    end
  end

  def kind
    valid?
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    if s1 + s2 < s3 || s1 + s3 < s2 || s2 + s3 < s1 || s1 + s2 + s3 == 0
      raise TriangleError
    else
      true
    end
  end  


  class TriangleError < StandardError
  end

end
