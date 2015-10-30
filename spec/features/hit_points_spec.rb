require 'spec_helper'

feature 'Seeing hitpoints' do
  scenario 'see player 2 hitpoints at start of game' do
    visit('/')
    fill_in('player_1_name', with: "Wolverine" )
    fill_in('player_2_name', with:  "Spiderman" )
    click_button("May the force be with you")
    expect(page).to have_content('Spiderman: 60/60HP')
  end
end

