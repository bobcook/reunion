require 'rails_helper'

RSpec.describe "classmates/new", type: :view do
  before(:each) do
    assign(:classmate, Classmate.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :married_name => "MyString",
      :paid => false,
      :attending => false,
      :status => "",
      :user => ""
    ))
  end

  it "renders new classmate form" do
    render

    assert_select "form[action=?][method=?]", classmates_path, "post" do

      assert_select "input[name=?]", "classmate[first_name]"

      assert_select "input[name=?]", "classmate[last_name]"

      assert_select "input[name=?]", "classmate[married_name]"

      assert_select "input[name=?]", "classmate[paid]"

      assert_select "input[name=?]", "classmate[attending]"

      assert_select "input[name=?]", "classmate[status]"

      assert_select "input[name=?]", "classmate[user]"
    end
  end
end
