require 'spec_helper'

feature 'Attack another player' do
  scenario 'Player 1 attacks player 2 and receives confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Wolverine attacked Spiderman')
  end
end
