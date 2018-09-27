
require 'pg'

feature 'Viewing bookmarks' do

  scenario 'list bookmarks' do
    

  Bookmark.create(url: "http://www.makersacademy.com")
  Bookmark.create(url: "http://www.google.com")
  Bookmark.create(url: "http://www.destroyallsoftware.com")


visit('/bookmarks')

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
