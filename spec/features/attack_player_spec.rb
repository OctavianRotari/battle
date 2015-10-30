require 'spec_helper'

feature 'Attack another player' do
  scenario 'Player 1 attacks player 2 and receives confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Wolverine attacked Spiderman')
  end

  scenario 'When player 1 attacks player 2 HP goes down' do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue to battle')
    expect(page).to have_content('Spiderman: 50/60HP')
  end
end
