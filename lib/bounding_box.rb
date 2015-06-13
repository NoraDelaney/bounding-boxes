class BoundingBox
  attr_accessor :x, :y, :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end


  def left
    x
  end

  def right
    width + x
  end

  def top
    height + y
  end

  def bottom
    y
  end

  def contains_point?(a, b)
    a <= right && left <= a && b <= top && bottom <= b
  end


end
