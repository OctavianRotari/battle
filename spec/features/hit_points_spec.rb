require 'spec_helper'

feature 'Seeing hitpoints' do
  scenario 'see player 2 hitpoints at start of game' do
    sign_in_and_play
    expect(page).to have_content('Spiderman: 60/60HP')
  end
end
