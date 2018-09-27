require 'pg'

feature "adding bookmarks" do
  scenario "adding bookamrks" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    click_button "Submit"

    expect(page).to have_content 'http://www.testbookmark.com'
  end


  scenario 'bookmark must be valid url' do
    visit('/bookmarks/new')
    fill_in('url', with: 'sort it out m8')
    click_button "Submit"

    expect(page).to have_content "You must submit a valid url"


  end
end
