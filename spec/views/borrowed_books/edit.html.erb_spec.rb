require 'rails_helper'

RSpec.describe "borrowed_books/edit", type: :view do
  before(:each) do
    @borrowed_book = assign(:borrowed_book, BorrowedBook.create!(
      :book_id => 1,
      :borrower_id => 1
    ))
  end

  it "renders the edit borrowed_book form" do
    render

    assert_select "form[action=?][method=?]", borrowed_book_path(@borrowed_book), "post" do

      assert_select "input#borrowed_book_book_id[name=?]", "borrowed_book[book_id]"

      assert_select "input#borrowed_book_borrower_id[name=?]", "borrowed_book[borrower_id]"
    end
  end
end
