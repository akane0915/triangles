require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')

get('/') do
  erb(:index)
end

get('/results') do
  side1 = params.fetch('side1').to_i
  side2 = params.fetch('side2').to_i
  side3 = params.fetch('side3').to_i
  triangle = Triangle.new(side1, side2, side3)
  @results = triangle.type()
end
