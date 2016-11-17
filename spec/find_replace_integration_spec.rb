require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit('/')
    fill_in('replace', :with => "I am walking my cat to the cathedral")
    click_button('Send')
    expect(page).to have_content("I am walking my dog to the doghedral.")
  end
end
