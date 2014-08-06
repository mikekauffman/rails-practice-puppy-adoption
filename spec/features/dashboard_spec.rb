require 'rails_helper'

feature 'User can interact with puppies' do
  scenario 'User can add a puppy to their dashboard' do
    create(:user)
    create(:puppy)
    login

    click_on "Add Me!"

    expect(page).to have_content('My Puppy Dashboard')
    expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
  end

  scenario 'User can schedule a playdate with a favorited puppy' do
    create(:user)
    create(:puppy)
    login

    click_on "Add Me!"

    click_on "Make a Play Date"

    expect(page).to have_content('Schedule a Play Date')
    expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")

    two_days_from_now = 2.days.from_now.to_datetime
    select_date_and_time(two_days_from_now, from: 'playdate_time')

    fill_in 'playdate_attendees', with: '4'

    click_on "Schedule"

    expect(page).to have_content "Upcoming Play Dates"
    expect(page).to have_content two_days_from_now.strftime("%B")
    expect(page).to have_content two_days_from_now.strftime("%-d")
    expect(page).to have_content "at 12:45 PM"
    expect(page).to have_content "4 People Attending"
  end
end

