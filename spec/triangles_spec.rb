require('rspec')
require('triangles')

describe('Triangle') do
  describe('#check?') do
    it('will return false if it is not a triangle') do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.check?()).to(eq(false))
    end
  end
end
