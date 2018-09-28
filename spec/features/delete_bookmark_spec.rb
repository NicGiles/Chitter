require 'bookmark'
require 'spec_helper'

feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.c4.co.uk')
    fill_in('title', with: 'Channel 4')
    click_button "Submit"
    expect(page).to have_content('http://www.c4.co.uk')
    click_button 'delete'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content('Channel 4', 'http://www.c4.co.uk')
  end
end
