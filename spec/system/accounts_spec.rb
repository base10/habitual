require 'rails_helper'

RSpec.describe "Accounts", type: :system do
  before do
    driven_by(:rack_test)
  end

  scenario "account creation" do
    name = "Enoch"
    password = "bippy-foo-bar-baz"

    visit new_account_path

    fill_in "Email", with: "root@example.com"
    fill_in "Name", with: name
    fill_in "Password", with: password
    fill_in "Confirm your password", with: password
    click_button "Create User"

    expect(page).to have_text("Welcome, #{name}. Your account has been created.")
  end
end
