
require 'pg'

feature 'Viewing bookmarks' do

  scenario 'list bookmarks' do


  Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
  Bookmark.create(url: "http://www.google.com", title: 'Google')
  Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')


visit('/bookmarks')

    expect(page).to have_content('Makers Academy', 'http://www.makersacademy.com')
    expect(page).to have_content('Destroy All Software', 'http://www.destroyallsoftware.com')
    expect(page).to have_content('Google', 'http://www.google.com')
  end
end
