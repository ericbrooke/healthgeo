require 'spec_helper'

feature 'Creating Providers' do
  scenario "can create a provider" do
    visit '/'

    click_link 'New Provider'

    fill_in 'Name', with: 'ABC Health'
    fill_in 'Kind', with: 'Health Clinic'
    click_button 'Create Provider'

    expect(page).to have_content('Provider has been created.')
  end
end
