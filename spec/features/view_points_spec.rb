feature 'Display players hit points' do
  scenario 'player 1 can see player 2 scores' do
    sign_in_and_play
    expect(page).to have_content('James: 100 Hit points')
  end
end
