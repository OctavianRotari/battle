def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: "Wolverine" )
  fill_in('player_2_name', with:  "Spiderman" )
  click_button("May the force be with you")
end
