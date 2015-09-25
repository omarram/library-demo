require 'rails_helper'

RSpec.describe "loaned_books/new", type: :view do
  before(:each) do
    assign(:loaned_book, LoanedBook.new(
      :book_id => 1,
      :borrower_id => 1
    ))
  end

  it "renders new loaned_book form" do
    render

    assert_select "form[action=?][method=?]", loaned_books_path, "post" do

      assert_select "input#loaned_book_book_id[name=?]", "loaned_book[book_id]"

      assert_select "input#loaned_book_borrower_id[name=?]", "loaned_book[borrower_id]"
    end
  end
end
