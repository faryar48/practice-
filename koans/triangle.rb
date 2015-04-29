# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  # if a == b && b == c 
  #   :equilateral
  # elsif a == b || a == c || b == c 
  #   :isosceles
  # else 
  #   :scalene
  # end 

  raise TriangleError unless [a,b,c].each { |x|
    x > 0
  }

  sides = [a, b, c].sort
  if(sides[0] + sides[1] <= sides[2])
    raise TriangleError, "Sides do not add up."
  end

  [:equilateral, :isosceles, :scalene][sides.uniq.size - 1]
      
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
