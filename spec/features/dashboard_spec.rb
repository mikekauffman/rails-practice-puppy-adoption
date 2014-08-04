require 'rails_helper'

feature 'User can interact with puppies' do
  scenario 'User can add a puppy to their dashboard' do
    create_user
    create_puppy
    login

    click_on "Add Me!"

    expect(page).to have_content('My Puppy Dashboard')
    expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
  end
end

