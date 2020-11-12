feature "enter player names" do
  scenario "submitting player names" do
    visit('/')
    fill_in :player1_name, with: 'Jack'
    fill_in :player2_name, with: 'James'
    click_button 'Submit'
    expect(page).to have_content('Jack vs. James')
  end
end
