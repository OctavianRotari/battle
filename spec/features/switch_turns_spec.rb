feature "switching turns" do
  scenario "show whose turn is it" do
    sign_in_and_play
    expect(page).to have_content('Wolverine\'s turn')
  end
  scenario "show whose turn is it" do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue to battle')
    expect(page).to have_content('Spiderman\'s turn')
  end
end
