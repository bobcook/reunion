require 'rails_helper'

RSpec.describe "classmates/index", type: :view do
  before(:each) do
    assign(:classmates, [
      Classmate.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :married_name => "Married Name",
        :paid => false,
        :attending => false,
        :status => "",
        :user => ""
      ),
      Classmate.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :married_name => "Married Name",
        :paid => false,
        :attending => false,
        :status => "",
        :user => ""
      )
    ])
  end

  it "renders a list of classmates" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Married Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
