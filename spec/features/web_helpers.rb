def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Jack'
  fill_in :player2_name, with: 'James'
  click_button 'Submit'
end
