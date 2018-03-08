require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street1 => "MyString",
      :stree2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :country => "MyString",
      :classmate => ""
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[street1]"

      assert_select "input[name=?]", "address[stree2]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[zip]"

      assert_select "input[name=?]", "address[country]"

      assert_select "input[name=?]", "address[classmate]"
    end
  end
end
