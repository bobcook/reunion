require 'rails_helper'

RSpec.describe "emails/edit", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :type => "",
      :email => "MyString",
      :classmate => ""
    ))
  end

  it "renders the edit email form" do
    render

    assert_select "form[action=?][method=?]", email_path(@email), "post" do

      assert_select "input[name=?]", "email[type]"

      assert_select "input[name=?]", "email[email]"

      assert_select "input[name=?]", "email[classmate]"
    end
  end
end
