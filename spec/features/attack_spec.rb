feature "attacking" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Jack attacked James')
  end
  scenario "reduce player 2 score by 10" do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Back to game'
    expect(page).to have_content('James: 90 Hit points')

  end
end
