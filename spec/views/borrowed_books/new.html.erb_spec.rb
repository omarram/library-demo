require 'rails_helper'

RSpec.describe "borrowed_books/new", type: :view do
  before(:each) do
    assign(:borrowed_book, BorrowedBook.new(
      :book_id => 1,
      :borrower_id => 1
    ))
  end

  it "renders new borrowed_book form" do
    render

    assert_select "form[action=?][method=?]", borrowed_books_path, "post" do

      assert_select "input#borrowed_book_book_id[name=?]", "borrowed_book[book_id]"

      assert_select "input#borrowed_book_borrower_id[name=?]", "borrowed_book[borrower_id]"
    end
  end
end
