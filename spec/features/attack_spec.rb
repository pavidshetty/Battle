# Player 2 attacks player 1 and gets a confirmation
feature 'Attacking' do
  # scenario 'Player1 attacks player 2' do
  #   sign_in_and_play_attack
  #   expect(page).to have_content 'Pavi attacked Ash'
  # end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play_attack
    expect(page).not_to have_content 'Ash: 60HP'
    expect(page).to have_content 'Ash: 50HP'
  end
end
