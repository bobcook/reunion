require 'rails_helper'

RSpec.describe "phones/new", type: :view do
  before(:each) do
    assign(:phone, Phone.new(
      :label => "",
      :number => "MyString",
      :classmate => ""
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input[name=?]", "phone[type]"

      assert_select "input[name=?]", "phone[number]"

      assert_select "input[name=?]", "phone[classmate]"
    end
  end
end
