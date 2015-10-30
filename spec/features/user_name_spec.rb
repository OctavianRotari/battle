require 'spec_helper'

feature "adding player names" do
  scenario 'by filling in the form' do
    visit('/')
    fill_in('player_1_name', with: "Wolverine" )
    fill_in('player_2_name', with:  "Spiderman" )
    click_button("May the force be with you")
    expect(page).to have_content("Wolverine vs Spiderman")
  end
end
