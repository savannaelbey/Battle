feature "enter player names" do
  scenario "submitting player names" do
    sign_in_and_play
    expect(page).to have_content('Jack vs. James')
  end
end
