require 'rails_helper'

RSpec.describe "phones/show", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :type => "Type",
      :number => "Number",
      :classmate => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(//)
  end
end
