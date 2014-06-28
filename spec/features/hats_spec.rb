require 'spec_helper'

feature 'CRUD hats' do
  scenario 'User can create a list of hats' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a hat'
    fill_in 'Brand', with: 'Goorin Bros'
    fill_in 'Fit', with: 'Medium'
    click_on 'Add hat'
    expect(page).to have_content 'Goorin Bros'
    expect(page).to have_content 'Medium'
  end
end