require 'rails_helper'

RSpec.describe "classmates/edit", type: :view do
  before(:each) do
    @classmate = assign(:classmate, Classmate.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :married_name => "MyString",
      :paid => false,
      :attending => false,
      :status => "",
      :user => ""
    ))
  end

  it "renders the edit classmate form" do
    render

    assert_select "form[action=?][method=?]", classmate_path(@classmate), "post" do

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
