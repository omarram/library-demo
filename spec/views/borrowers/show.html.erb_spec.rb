require 'rails_helper'

RSpec.describe "borrowers/show", type: :view do
  before(:each) do
    @borrower = assign(:borrower, Borrower.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
