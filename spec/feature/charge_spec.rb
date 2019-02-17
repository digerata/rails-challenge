require 'rails_helper'

RSpec.describe "Charge view headings", type: :feature do
  context 'Validate results from known source' do
    it 'must have 3 headings on the page' do
      visit '/charges'
      expect(page).to have_css('h1#failed_heading', text: 'Failed Charges')
      expect(page).to have_css('h1#disputed_heading', text: 'Disputed Charges')
      expect(page).to have_css('h1#successful_heading', text: 'Successful Charges')
    end
  end
end

RSpec.describe "Verify number and types of charges", type: :feature do
  context 'Validate results from known source' do
    it 'must have 10 successful charges, 5 failed charges and some disputed charges' do
      visit '/charges'
      expect(page).to have_css('table#failed tr', :count=>1) #trying to get this to count all tr's ion the table
    end
  end
end