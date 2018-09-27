require 'bookmark'
require 'spec_helper'

feature 'adding bookmarks' do
  scenario "adding bookamrks" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button "Submit"

    expect(page).to have_content('Test Bookmark', 'http://www.testbookmark.com')
  end

  scenario 'bookmark must be valid url' do
    visit('/bookmarks/new')
    fill_in('url', with: 'rubbish url')
    fill_in('title', with: 'rubbish title')
    click_button('Submit')

    expect(page).to have_content "You must submit a valid url"

end
  end
