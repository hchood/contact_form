require 'spec_helper'

feature 'View all contacts' do

  # As an admin
  # I want to review contact inquiries
  # So that I can respond or take action

  # Acceptance Criteria:

  # I can see a list of all contact inquiries

  it 'displays all contacts' do
    contact1 = FactoryGirl.create(:contact)
    contact2 = FactoryGirl.create(:contact, subject: 'more caffeine!')
    contact3 = FactoryGirl.create(:contact, description: 'help requests are the best')

    visit '/contacts'
    save_and_open_page
    expect(page).to have_content 'an awesome subject'
    expect(page).to have_content 'more caffeine!'
    expect(page).to have_content 'help requests are the best'
  end
end
