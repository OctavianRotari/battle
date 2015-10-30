require 'spec_helper'

feature "adding player names" do
  scenario 'by filling in the form' do
    sign_in_and_play
    expect(page).to have_content("Wolverine vs Spiderman")
  end
end
