require 'rails_helper'

RSpec.describe "classmates/show", type: :view do
  before(:each) do
    @classmate = assign(:classmate, Classmate.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :married_name => "Married Name",
      :paid => false,
      :attending => false,
      :status => "",
      :user => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Married Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
