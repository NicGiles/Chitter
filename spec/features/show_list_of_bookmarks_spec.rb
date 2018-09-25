

feature 'show list of bookmarks' do
  scenario 'show list of bookmarks' do
    visit '/'
    expect(page).to have_content "Bookmark-Manager"
  end
end
