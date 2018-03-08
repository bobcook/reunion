require 'rails_helper'

RSpec.describe "emails/index", type: :view do
  before(:each) do
    assign(:emails, [
      Email.create!(
        :type => "Type",
        :email => "Email",
        :classmate => ""
      ),
      Email.create!(
        :type => "Type",
        :email => "Email",
        :classmate => ""
      )
    ])
  end

  it "renders a list of emails" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
