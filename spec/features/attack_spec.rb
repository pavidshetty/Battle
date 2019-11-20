# Player 2 attacks player 1 and gets a confirmation
feature 'Attacking' do
  scenario 'Player1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack' #you can even use click_link
    expect(page).to have_content 'Pavi attacked Ash'
  end
end
