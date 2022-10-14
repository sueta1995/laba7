class Rect
  def initialize a, b
    @a, @b = a, b
  end

  def print
    p @a, @b
  end

  def isSquare
    @a == @b ? true : false
  end
end

class Cuboid < Rect
  def initialize a, b, c
    super(a, b)
    @c = c
  end

  def print
    p @a, @b, @c
  end

  def isCube
    @a == @b and @a == @c ? true : false
  end
end
