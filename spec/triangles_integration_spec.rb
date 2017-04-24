require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangles path', {:type => :feature}) do
  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '4')
    click_button('Reveal')
    expect(page).to have_content("Isosceles")
  end
end
