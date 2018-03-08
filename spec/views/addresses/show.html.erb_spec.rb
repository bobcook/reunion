require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street1 => "Street1",
      :stree2 => "Stree2",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :country => "Country",
      :classmate => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street1/)
    expect(rendered).to match(/Stree2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
