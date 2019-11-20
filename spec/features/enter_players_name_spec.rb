# Visit the home page ('/')
# Fill in a text field with a name
# Fill in a second text field with a name
# Click a Submit button
# Capybara's feature and scenario syntax. These work just like describe and it

feature 'enter name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Pavi vs. Ash'
  end
end
