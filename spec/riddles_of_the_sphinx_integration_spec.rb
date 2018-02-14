require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('correct riddle guess', {:type => :feature}) do
  it('Returns true if the user enters the correct answer to the riddle') do
    visit('/')
    new_riddle = Riddles.new()
    fill_in('guess', :with => new_riddle.answer)
    fill_in('answer', :with => new_riddle.answer)
    click_button('Go!')
    expect(page).to have_content('true')
  end
  it('Returns true if the user does indeed enter the correct answer to the riddle') do
    visit('/')
    new_riddle = Riddles.new()
    puts new_riddle.answer
    fill_in('guess', :with => 'sand')
    click_button('Go!')
    expect(page).to have_content('true')
  end
end
