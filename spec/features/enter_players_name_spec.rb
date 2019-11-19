# Visit the home page ('/')
# Fill in a text field with a name
# Fill in a second text field with a name
# Click a Submit button
# Capybara's feature and scenario syntax. These work just like describe and it

feature 'enter name' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Pavi'
    fill_in :player_2_name, with: 'Ash'
    click_button 'Submit'
    expect(page).to have_content 'Pavi vs. Ash'
  end
end
