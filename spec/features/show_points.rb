# view Players 2 hit points(assuming 60hit points)
feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ash: 60HP'
  end
end
