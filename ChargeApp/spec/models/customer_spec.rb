require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "#name" do
    it "returns a full name" do
      customer = Customer.create(first_name: "Joe", last_name: "Blow")
      expect(customer.name).to eq "Joe Blow"
    end
  end
end
