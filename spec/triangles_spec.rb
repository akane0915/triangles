require('rspec')
require('triangles')

describe('Triangle') do
  describe('#check?') do
    it('will return false if it is not a triangle') do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.check?()).to(eq(false))
    end
  end

  describe('#type') do
    it('will return equilateral if all sides are the same') do
      test_triangle = Triangle.new(4, 4, 4)
      expect(test_triangle.type()).to(eq('Equilateral'))
    end

    it('will return isosceles if two sides are the same') do
      test_triangle = Triangle.new(5, 5, 4)
      expect(test_triangle.type()).to(eq('Isosceles'))
    end
  end
end
