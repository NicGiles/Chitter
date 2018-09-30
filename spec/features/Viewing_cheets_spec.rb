require 'cheet'
require 'spec_helper'

  feature 'Viewing cheets' do
    scenario 'list cheets' do

    Cheet.create(cheet: "brand new tweet")
    Cheet.create(cheet: "strong opinion about Russia")

    visit('/chitter')

    expect(page).to have_content("brand new tweet")
    expect(page).to have_content("strong opinion about Russia")
  end
end
