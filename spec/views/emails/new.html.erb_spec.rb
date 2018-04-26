require 'rails_helper'

RSpec.describe "emails/new", type: :view do
  before(:each) do
    assign(:email, Email.new(
      :label => "",
      :email => "MyString",
      :classmate => ""
    ))
  end

  it "renders new email form" do
    render

    assert_select "form[action=?][method=?]", emails_path, "post" do

      assert_select "input[name=?]", "email[type]"

      assert_select "input[name=?]", "email[email]"

      assert_select "input[name=?]", "email[classmate]"
    end
  end
end
