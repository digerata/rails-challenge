require "spec_helper"

feature "User sees tables" do
  scenario "Failed, Disputed, and Successful Charges" do
    visit '/charges'
    expect(page).to have_content "Failed Charges"
    expect(page).to have_content "Disputed Charges"
    expect(page).to have_content "Successful Charges"
  end
end
