require 'spec_helper'

feature 'Destroy contact inquiry' do
  it 'deletes a contact inquiry' do
    contact1 = FactoryGirl.create(:contact, subject: 'more caffeine!')
    contact2 = FactoryGirl.create(:contact)
    contact3 = FactoryGirl.create(:contact, description: 'help requests are the best')

    visit '/contacts'
    within "#contact_#{contact1.id}" do
      click_on 'Delete'
    end

    # page.all('.delete')[0].click -- This works too.

    expect(page).not_to have_content 'more caffeine!'
  end
end
