require 'rails_helper'

RSpec.describe "borrowers/edit", type: :view do
  before(:each) do
    @borrower = assign(:borrower, Borrower.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit borrower form" do
    render

    assert_select "form[action=?][method=?]", borrower_path(@borrower), "post" do

      assert_select "input#borrower_name[name=?]", "borrower[name]"
    end
  end
end
