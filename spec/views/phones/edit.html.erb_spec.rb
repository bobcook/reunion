require 'rails_helper'

RSpec.describe "phones/edit", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :type => "",
      :number => "MyString",
      :classmate => ""
    ))
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do

      assert_select "input[name=?]", "phone[type]"

      assert_select "input[name=?]", "phone[number]"

      assert_select "input[name=?]", "phone[classmate]"
    end
  end
end
