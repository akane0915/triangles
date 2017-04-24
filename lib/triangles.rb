class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:check?) do
    sides_array = [@side1, @side2, @side3].sort()
    sides_array[2].<(sides_array[0].+(sides_array[1]))
  end
end
