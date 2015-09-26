require 'rails_helper'

RSpec.describe "borrowed_books/index", type: :view do
  before(:each) do
    assign(:borrowed_books, [
      BorrowedBook.create!(
        :book_id => 1,
        :borrower_id => 2
      ),
      BorrowedBook.create!(
        :book_id => 1,
        :borrower_id => 2
      )
    ])
  end

  it "renders a list of borrowed_books" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
