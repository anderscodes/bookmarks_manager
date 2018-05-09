RSpec.feature 'Add Bookmarks' do
  scenario 'Adding a new bookmark' do
    visit('/bookmarks')
    fill_in 'bookmark', with: 'https://www.msnnews.co.uk'
    click_button 'Enscribe'
    expect(page).to have_content 'https://www.msnnews.co.uk'
  end
end
