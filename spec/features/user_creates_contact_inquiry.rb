require 'spec_helper'

feature 'Create contact inquiry' do
  # As a site visitor
  # I want to contact the site's staff
  # So that I can tell them how awesome they are

  # Acceptance Criteria:

  # I must specify a valid email address
  # I must specify a subject
  # I must specify a description
  # I must specify a first name
  # I must specify a last name

  it 'creates a valid contact inquiry' do
    visit '/contacts/new'

    fill_in 'Email', with: 'jsmith@gmail.com'
    fill_in 'Subject', with: 'awesomeness'
    fill_in 'Description', with: 'here is some happy text'
    fill_in 'First Name', with: 'John'
    fill_in 'Last Name', with: 'Smith'

    click_on 'Create Contact'
    expect(page).to have_content 'Contact was successfully created'
  end

end
