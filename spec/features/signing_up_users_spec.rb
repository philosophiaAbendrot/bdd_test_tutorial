# signup
# visit root
# click on a signup link
# fill in email
# fill in password
# fill in password confirmation

# click signup button

# invalid signup
# visit root
# click on a signup link
# click signup button

require 'rails_helper'
RSpec.feature 'Signup Users' do
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_button "Sign up"

    # expect(page).to have_content("You have signed up successfully.")
  end

  scenario "with invalid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: ""
    fill_in "Password", with: ""
    fill_in "Password Confirmation", with: ""
    click_button "Sign up"

    # expect(page).to have_content("You have not signed up successfully")
  end
end
