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

  scenario 'User can update a hat from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a hat'
    fill_in 'Brand', with: 'Goorin Bros'
    fill_in 'Fit', with: 'Medium'
    click_on 'Add hat'
    expect(page).to have_content 'Goorin Bros'
    expect(page).to have_content 'Medium'
    click_on 'Goorin Bros'
    expect(page).to have_content 'Goorin Bros'
    expect(page).to have_content 'Medium'
    click_on 'Edit'
    fill_in 'Brand', with: 'Brooks Bros'
    fill_in 'Fit', with: 'Large'
    click_on 'Update hat'
    expect(page).to have_content 'Brooks Bros'
    expect(page).to have_content 'Large'
    expect(page).to_not have_content 'Goorin Bros'
    expect(page).to_not have_content 'Medium'
  end

  scenario 'User can delete a user form list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a hat'
    fill_in 'Brand', with: 'Goorin Bros'
    fill_in 'Fit', with: 'Medium'
    click_on 'Add hat'
    expect(page).to have_content 'Goorin Bros'
    expect(page).to have_content 'Medium'
    click_on 'Goorin Bros'
    expect(page).to have_content 'Goorin Bros'
    expect(page).to have_content 'Medium'
    click_on 'Delete'
    expect(page).to_not have_content 'Goorin Bros'
    expect(page).to_not have_content 'Medium'
  end
end