require "spec_helper"

feature "User sees tables" do
  before do
    visit '/charges'
  end

  scenario "with correct Successful data" do
    expect(page).to have_content "Successful Charges"
    expect(page).to have_selector('.successful_charges tbody > tr', count: 10)
  end

  scenario "with correct Failed data" do
    expect(page).to have_content "Failed Charges"
    expect(page).to have_selector('.failed_charges tbody > tr', count: 5)
  end

  scenario "with correct Disputed data" do
    expect(page).to have_content "Disputed Charges"
    expect(page).to have_selector('.failed_charges tbody > tr', count: 5)
  end
end
