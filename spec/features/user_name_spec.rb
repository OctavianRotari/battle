require 'spec_helper'

feature "adding player names" do
  scenario 'by filling in the form' do
    visit('/')
    fill_in('player_1', with: "Wolverine" )
    fill_in('player_2', with:  "Spiderman" )
    click_button("May the force be with you")
    expect(page).to have_content("Wolverine vs Spiderman")
  end
end
