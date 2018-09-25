require 'spec_helper'

feature 'Viewing bookmarks' do

  scenario 'list bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "google.com"
    expect(page).to have_content "youtube.com"
    expect(page).to have_content "facebook.com"
  end
end
