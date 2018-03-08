require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street1 => "Street1",
        :stree2 => "Stree2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :classmate => ""
      ),
      Address.create!(
        :street1 => "Street1",
        :stree2 => "Stree2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :classmate => ""
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Stree2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
