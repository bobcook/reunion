require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :type => "Type",
        :number => "Number",
        :classmate => ""
      ),
      Phone.create!(
        :type => "Type",
        :number => "Number",
        :classmate => ""
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
