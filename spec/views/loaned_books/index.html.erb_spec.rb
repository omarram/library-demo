require 'rails_helper'

RSpec.describe "loaned_books/index", type: :view do
  before(:each) do
    assign(:loaned_books, [
      LoanedBook.create!(
        :book_id => 1,
        :borrower_id => 2
      ),
      LoanedBook.create!(
        :book_id => 1,
        :borrower_id => 2
      )
    ])
  end

  it "renders a list of loaned_books" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
