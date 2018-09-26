require 'spec_helper'

feature 'Viewing bookmarks' do

  scenario 'list bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
