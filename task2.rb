# frozen_string_literal: true

# super class
class Rect
  def initialize(el1, el2)
    @a = el1
    @b = el2
  end

  def print
    p @a, @b
  end

  def square?
    @a == @b
  end
end

# child class
class Cuboid < Rect
  def initialize(el1, el2, el3)
    super(el1, el2)
    @c = el3
  end

  def print
    p @a, @b, @c
  end

  def cube?
    @a == @b and @a == @c
  end
end
