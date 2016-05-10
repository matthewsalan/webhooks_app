require 'rails_helper'

RSpec.feature "NewUsers", type: :feature do
  scenario "User navigates to the api/new template and see's the correct form" do
    visit "/api/new"

    expect(page).to have_field("Name")
    expect(page).to have_field("Email")
    expect(page).to have_button("Submit")
  end
end
