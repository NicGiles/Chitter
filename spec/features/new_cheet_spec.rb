require 'cheet'
require 'spec_helper'

feature 'adding cheets' do
  scenario 'adding new cheets' do
    visit('/chitter/new')
    fill_in('cheet', with: 'another new cheet')
    click_button 'Submit'

    expect(page).to have_content('another new cheet')
  end
end
