require 'rails_helper'

RSpec.describe "Sessions", type: :system do
  before do
    driven_by(:rack_test)
  end

  scenario "Logging in with valid credentials" do
    user = FactoryBot.create(:user)

    # Create an existing user account
    # Visit the site
    # Fill out email, password
    # submit the form
    # See a logged in result

    visit new_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    expect(page).to have_text("Welcome back, #{user.name}")
  end

  scenario "Logging in with invalid credentials" do
    user = FactoryBot.build(:user)

    # Visit the site
    # Fill out a known bad email, password
    # submit the form
    # See a message that login wasn't successful

    visit new_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"

    expect(page).to have_text("Your account credentials are incorrect.")
  end

  scenario "Logging out" do
    skip
    # Create an existing user account
    # Login / find / create a helper for creating sessions from existing accounts
    # Visit the logout path
      # I expect i need to create this as link-triggered empty form
  end
end
