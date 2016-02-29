require 'rails_helper'

RSpec.describe "charges/edit", type: :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :paid => false,
      :amount => 1,
      :currency => "MyString",
      :refunded => false,
      :customer_id => 1,
      :disputed => false
    ))
  end

  it "renders the edit charge form" do
    render

    assert_select "form[action=?][method=?]", charge_path(@charge), "post" do

      assert_select "input#charge_paid[name=?]", "charge[paid]"

      assert_select "input#charge_amount[name=?]", "charge[amount]"

      assert_select "input#charge_currency[name=?]", "charge[currency]"

      assert_select "input#charge_refunded[name=?]", "charge[refunded]"

      assert_select "input#charge_customer_id[name=?]", "charge[customer_id]"

      assert_select "input#charge_disputed[name=?]", "charge[disputed]"
    end
  end
end
