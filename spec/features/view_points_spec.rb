feature 'Display players hit points' do
  scenario 'player 1 can see player 2 scores' do
    visit('/')
    fill_in :player1_name, with: 'Jack'
    fill_in :player2_name, with: 'James'
    click_button 'Submit'
    expect(page).to have_content('James: 12 Hit points')
  end
end
