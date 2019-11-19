feature 'Testing infrastructure' do
  scenario 'Displays Title on homepage' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
