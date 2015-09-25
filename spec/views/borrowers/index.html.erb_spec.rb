require 'rails_helper'

RSpec.describe "borrowers/index", type: :view do
  before(:each) do
    assign(:borrowers, [
      Borrower.create!(
        :name => "Name"
      ),
      Borrower.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of borrowers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
