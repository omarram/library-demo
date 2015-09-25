require 'rails_helper'

RSpec.describe "borrowers/new", type: :view do
  before(:each) do
    assign(:borrower, Borrower.new(
      :name => "MyString"
    ))
  end

  it "renders new borrower form" do
    render

    assert_select "form[action=?][method=?]", borrowers_path, "post" do

      assert_select "input#borrower_name[name=?]", "borrower[name]"
    end
  end
end
