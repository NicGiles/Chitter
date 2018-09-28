require 'bookmark'
require 'spec_helper'

feature 'adding bookmarks' do
  scenario "adding bookamrks" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.workingurl.com')
    fill_in('title', with: 'Test Bookmark')
    click_button "Submit"

    expect(page).to have_content('Working URL', 'http://www.workingurl.com')
  end
end

  feature 'adding bad bookmarks' do
  scenario 'bookmark must be valid url' do
    visit('/bookmarks/new')
    fill_in('url', with: 'rubbish url')
    fill_in('title', with: 'rubbish title')
    click_button "Submit"

    expect(page).not_to have_content('rubbish url', 'rubbish title')

end
  end
